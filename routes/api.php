<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\StudentController;
use App\Http\Controllers\Api\CourseController;
use App\Http\Controllers\Api\EnrollmentController;
use App\Http\Controllers\Api\StudentCourseController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Ruta para obtener el usuario actual
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Rutas de autenticación
Route::prefix('auth')->group(function () {
    Route::post('register', [AuthController::class, 'register']);
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
});

// Rutas de estudiantes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('students', [StudentController::class, 'index']);
    Route::post('students', [StudentController::class, 'store']);
    Route::get('students/{student}', [StudentController::class, 'show']);
    Route::put('students/{student}', [StudentController::class, 'update']);
    Route::patch('students/{student}', [StudentController::class, 'update']);
    Route::delete('students/{student}', [StudentController::class, 'destroy']);
});

// Rutas de cursos
Route::get('courses', [CourseController::class, 'index']); // Listar cursos 
Route::get('courses/{course}', [CourseController::class, 'show']); // Ver detalle del curso
Route::middleware('auth:sanctum')->group(function () {
    Route::post('courses', [CourseController::class, 'store']);
    Route::put('courses/{course}', [CourseController::class, 'update']);
    Route::patch('courses/{course}', [CourseController::class, 'update']);
    Route::delete('courses/{course}', [CourseController::class, 'destroy']);
});

// Rutas de inscripciones 
Route::middleware('auth:sanctum')->group(function () {
    Route::post('enrollments', [EnrollmentController::class, 'store']);//inscripcion 
    Route::get('enrollments', [EnrollmentController::class, 'index']);
    Route::get('noenrollments/{course_id}', [EnrollmentController::class, 'noinscrip']);
    Route::delete('enrollments/{id}', [EnrollmentController::class, 'destroy']);
});
