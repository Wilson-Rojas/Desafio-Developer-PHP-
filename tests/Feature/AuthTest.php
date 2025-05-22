<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;
use App\Models\Student;
use App\Models\Course;
use App\Models\Enrollment;

class AuthTest extends TestCase
{
    use RefreshDatabase;

    public function testUserCanRegister()
    {
        $response = $this->postJson('/api/auth/register', [
            'name' => 'Test User',
            'email' => 'test@example.com',
            'password' => 'password',
        ]);

        $response->assertStatus(201)
            ->assertJsonStructure(['user', 'token']);
    }

    public function testUserCanLogin()
    {
        $user = User::factory()->create([
            'email' => 'test@example.com',
            'password' => bcrypt('password'),
        ]);

        $response = $this->postJson('/api/auth/login', [
            'email' => 'test@example.com',
            'password' => 'password',
        ]);

        $response->assertStatus(200)
            ->assertJsonStructure(['user', 'token']);
    }

    private function authenticate()
    {
        $user = User::factory()->create([
            'email' => 'test@example.com',
            'password' => bcrypt('password'),
        ]);

        $response = $this->postJson('/api/auth/login', [
            'email' => 'test@example.com',
            'password' => 'password',
        ]);

        return $response['token'];
    }

    public function testCanListStudents()
    {
        $user = User::factory()->create();
        $this->actingAs($user, 'sanctum');
        $response = $this->getJson('/api/students');


        $response->assertStatus(200);
    }

    public function testCanCreateStudent()
    {
        $token = $this->authenticate();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->postJson('/api/students', [
                             'name' => 'John Doe',
                             'email' => 'john@example.com',
                             'birthdate' => now()->format('Y-m-d'),
                             'nationality' => 'Paraguaya',
                         ]);

        $response->assertStatus(201)
                 ->assertJsonStructure(['message']);
    }

    public function testCanShowStudent()
    {
        $token = $this->authenticate();
        $student = Student::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->getJson("/api/students/{$student->id}");

        $response->assertStatus(200);
    }

    public function testCanUpdateStudent()
    {
        $token = $this->authenticate();
        $student = Student::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->putJson("/api/students/{$student->id}", [
                             'name' => 'Jane Doe',
                             'email' => 'jane@example.com',
                         ]);

        $response->assertStatus(200)
                 ->assertJsonStructure(['message']);
    }

    public function testCanDeleteStudent()
    {
        $token = $this->authenticate();
        $student = Student::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->deleteJson("/api/students/{$student->id}");

        $response->assertStatus(200)
                 ->assertJsonStructure(['message']);
    }

    public function testCanListCourses()
    {
        $response = $this->getJson('/api/courses');
        $response->assertStatus(200);
    }

    public function testCanShowCourse()
    {
        $course = Course::factory()->create();
        $response = $this->getJson("/api/courses/{$course->id}");
        $response->assertStatus(200);
    }

    public function testCanCreateCourse()
    {
        $token = $this->authenticate();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->postJson('/api/courses', [
                             'title' => 'Course Title',
                             'description' => 'Course Description',
                             'start_date' => now()->format('Y-m-d'),
                             'end_date' => now()->addMonth()->format('Y-m-d'),
                         ]);

        $response->assertStatus(201)
                 ->assertJsonStructure(['message']);
    }

    public function testCanUpdateCourse()
    {
        $token = $this->authenticate();
        $course = Course::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->putJson("/api/courses/{$course->id}", [
                             'title' => 'Updated Title',
                             'description' => 'Updated Description',
                         ]);

        $response->assertStatus(200)
                 ->assertJsonStructure(['message']);
    }

    public function testCanDeleteCourse()
    {
        $token = $this->authenticate();
        $course = Course::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->deleteJson("/api/courses/{$course->id}");

        $response->assertStatus(200)
                 ->assertJsonStructure(['message']);
    }

    public function testCanEnrollStudentInCourse()
    {
        $token = $this->authenticate();
        $student = Student::factory()->create();
        $course = Course::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->postJson('/api/enrollments', [
                             'student_id' => $student->id,
                             'course_id' => $course->id,
                         ]);

        $response->assertStatus(201)
                 ->assertJsonStructure(['message']);
    }

    public function testCanListEnrollmentsByStudent()
    {
        $user = User::factory()->create();
        $this->actingAs($user, 'sanctum');

        $student = Student::factory()->create();

        $response = $this->getJson("/api/enrollments?student_id={$student->id}");

        $response->assertStatus(200);
    }

    public function testCanListEnrollmentsByCourse()
    {
        $user = User::factory()->create();
        $this->actingAs($user, 'sanctum');

        $course = Course::factory()->create();

        $response = $this->getJson("/api/enrollments?course_id={$course->id}");

        $response->assertStatus(200);
    }

    public function testCanDeleteEnrollment()
    {
        $token = $this->authenticate();
        $enrollment = Enrollment::factory()->create();

        $response = $this->withHeader('Authorization', "Bearer $token")
                         ->deleteJson("/api/enrollments/{$enrollment->id}");

        $response->assertStatus(200)
                 ->assertJsonStructure(['message']);
    }
}
