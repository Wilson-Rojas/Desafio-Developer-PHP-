<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
     public function run()
    {
        $faker = Faker::create();
        DB::table('enrollments')->delete();
        DB::table('students')->delete();
        DB::table('courses')->delete();
        
        // Reset auto-increment values
        DB::statement('ALTER TABLE enrollments AUTO_INCREMENT = 1');
        DB::statement('ALTER TABLE students AUTO_INCREMENT = 1');
        DB::statement('ALTER TABLE courses AUTO_INCREMENT = 1');

        $students = [];
        for ($i = 0; $i < 50; $i++) {
            $students[] = [
                'name' => $faker->name,
                'email' => $faker->unique()->safeEmail,
                'birthdate' => $faker->date('Y-m-d', '-18 years'),
                'nationality' => $faker->country,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }
        DB::table('students')->insert($students);
        
        $courses = [];
        for ($i = 0; $i < 20; $i++) {
            $startDate = $faker->dateTimeBetween('-1 month', '+2 months');
            $endDate = clone $startDate;
            $endDate->modify('+' . $faker->numberBetween(1, 6) . ' months');
            
            $courses[] = [
                'title' => $faker->sentence(3),
                'description' => $faker->paragraph(3),
                'start_date' => $startDate,
                'end_date' => $endDate,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        }
        DB::table('courses')->insert($courses);
        
        $enrollments = [];
        $studentIds = DB::table('students')->pluck('id')->toArray();
        $courseIds = DB::table('courses')->pluck('id')->toArray();
        
        foreach ($studentIds as $studentId) {
            $randomCourseCount = $faker->numberBetween(1, 5);
            $randomCourseIds = $faker->randomElements($courseIds, $randomCourseCount);
            
            foreach ($randomCourseIds as $courseId) {
                $enrollments[] = [
                    'student_id' => $studentId,
                    'course_id' => $courseId,
                    'enrolled_at' => $faker->dateTimeBetween('-6 months', 'now'),
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ];
            }
        }
        DB::table('enrollments')->insert($enrollments);
    }
}
