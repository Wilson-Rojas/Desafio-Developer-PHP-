<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    public function index()
    {
        try {
            $students = Student::paginate(10);
            if ($students->isEmpty()) {
                return response()->json([
                    'message' => 'No existen registros de estudiantes.'
                ], 200);
            }
            return response()->json($students, 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al obtener los estudiantes.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'name' => 'required',
                'email' => 'required|email|unique:students',
                'birthdate' => 'required|date',
                'nationality' => 'required'
            ]);
            $student = Student::create($validated);
            return response()->json([
                'message' => 'Estudiante creado exitosamente.',
                'student' => $student
            ], 201);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'message' => 'Error de validación.',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al crear el estudiante.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(Student $student)
    {
        return $student;
    }

    public function update(Request $request, Student $student)
    {
        try {
            $validated = $request->validate([
                'name' => 'sometimes|required',
                'email' => 'sometimes|required|email|unique:students,email,' . $student->id,
                'birthdate' => 'sometimes|required|date',
                'nationality' => 'sometimes|required'
            ]);
            $student->update($validated);
            return response()->json([
                'message' => 'Estudiante actualizado exitosamente.',
                'student' => $student
            ], 200);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'message' => 'Error de validación.',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al actualizar el estudiante.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $student = Student::find($id);
            if (!$student) {
                return response()->json([
                    'message' => 'Estudiante con el ID proporcionado no existe.'
                ], 200);
            }
            $student->delete();
            return response()->json([
                'message' => 'Estudiante eliminado exitosamente.'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al eliminar el estudiante.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
