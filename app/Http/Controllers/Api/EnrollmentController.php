<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Enrollment;
use Illuminate\Validation\ValidationException;

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
                $enrollments = Enrollment::with('student')->where('course_id', $request->course_id)->get();
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
