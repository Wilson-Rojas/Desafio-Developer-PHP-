<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Enrollment;
use Illuminate\Validation\ValidationException;
use DB;

class EnrollmentController extends Controller
{
    public function index(Request $request)
    {
        try {
            if ($request->has('student_id')) {
                $enrollments = Enrollment::with('course')->where('student_id', $request->student_id)->get();
                return response()->json([
                    'message' => 'Inscripciones encontradas correctamente.',
                    'code' => 200,
                    'data' => $enrollments
                ], 200);
            }

            if ($request->has('course_id')) {
                $courseId = $request->input('course_id');
                $enrollments = DB::table('enrollments')
                    ->join('students', 'enrollments.student_id', '=', 'students.id')
                    ->join('courses', 'enrollments.course_id', '=', 'courses.id')
                    ->where('enrollments.course_id', $courseId)
                    ->select(
                        'courses.title as course_title',
                        'students.id as student_id',
                        'students.name as student_name',
                        'students.email as student_email',
                    )
                    ->orderBy('students.name')
                    ->get();
                return response()->json([
                    'message' => 'Inscripciones encontradas correctamente.',
                    'code' => 200,
                    'data' => $enrollments
                ], 200);
            }

            $enrollments = Enrollment::with(['student', 'course'])->paginate(10);
            return response()->json([
                'message' => 'Inscripciones listadas correctamente.',
                'code' => 200,
                'data' => $enrollments
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error al obtener las inscripciones.',
                'code' => 500,
                'error' => $e->getMessage()
            ], 500);
        }
    }
    
    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'student_id' => 'required|exists:students,id',
                'course_id' => 'required|exists:courses,id',
            ]);
        } catch (ValidationException $e) {
            return response()->json([
                'message' => 'Datos de entrada inválidos.',
                'errors' => $e->errors(),
            ], 422);
        }

        try {
            $enrollment = Enrollment::create($request->only('student_id', 'course_id'));

            return response()->json([
                'message' => 'Inscripción creada correctamente.',
                'code' => 201,
                'data' => $enrollment,
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error al crear la inscripción.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function noinscrip($courseId)
    {
        $students = DB::table('students')
            ->whereNotExists(function ($query) use ($courseId) {
                $query->select(DB::raw(1))
                    ->from('enrollments')
                    ->whereColumn('enrollments.student_id', 'students.id')
                    ->where('enrollments.course_id', $courseId);
            })
            ->select(
                'id as student_id',
                'name as student_name',
            )
            ->orderBy('name')
            ->get();
        
        return $students;
    }

    public function destroy($id)
    {
        try {
            $enrollment = Enrollment::find($id);
            if (!$enrollment) {
                return response()->json([
                    'message' => 'Inscripción no encontrada.',
                    'code' => 404
                ], 404);
            }

            if (!$enrollment->delete()) {
                return response()->json([
                    'message' => 'No se pudo eliminar la inscripción.',
                    'code' => 500
                ], 500);
            }
            return response()->json([
                'message' => 'Inscripción eliminada correctamente.',
                'code' => 200
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Error al eliminar la inscripción.',
                'code' => 500,
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
