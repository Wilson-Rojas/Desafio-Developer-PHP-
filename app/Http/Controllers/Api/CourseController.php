<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;

class CourseController extends Controller
{
    public function index()
    {
        try {
            $courses = Course::paginate(10);

            if ($courses->isEmpty()) {
                return response()->json([
                    'message' => 'No existen cursos registrados.'
                ], 200);
            }

            return response()->json($courses, 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al obtener los cursos.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'title' => 'required',
                'description' => 'required',
                'start_date' => 'required|date',
                'end_date' => 'required|date',
            ]);

            $course = Course::create($validated);

            return response()->json([
                'message' => 'Curso creado correctamente.',
                'course' => $course,
            ], 201);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'message' => 'La validación falló.',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error inesperado.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function show(Course $course)
    {
        return $course;
    }

    public function update(Request $request, Course $course)
    {
        try {
            $validated = $request->validate([
                'title' => 'sometimes|required',
                'description' => 'sometimes|required',
                'start_date' => 'sometimes|required|date',
                'end_date' => 'sometimes|required|date',
            ]);

            if (empty($validated)) {
                return response()->json([
                    'message' => 'Sin datos para actualizar.',
                ], 400);
            }

            $course->update($validated);

            return response()->json([
                'message' => 'Curso actualizado correctamente.',
                'course' => $course
            ], 200);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json([
                'message' => 'La validacion fallo.',
                'errors' => $e->errors()
            ], 422);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'A ocurrido un error inesperado.',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    public function destroy(Course $course = null)
    {
        try {
            if (!$course) {
                return response()->json([
                    'message' => 'Curso no encontrado.'
                ], 404);
            }

            $course->delete();
            return response()->json([
                'message' => 'Curso eliminado correctamente.'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Ocurrió un error al eliminar el curso.',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
