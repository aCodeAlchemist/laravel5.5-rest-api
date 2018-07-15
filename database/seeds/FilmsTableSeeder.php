<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FilmsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('films')->truncate();

        // And now, let's create a few articles in our database:
        for ($i = 0; $i < 3; $i++) {
            $name = str_random(10);
            DB::table('films')->insert([
                'name' => $name,
                'slug' => strtolower($name),
                'description' => str_random(100),
                'release_date' => date('Y-m-d H:i:s'),
                'rating' => rand(1,5),
                'ticket_price' => rand(50, 100),
                'country' => 'India',
                'genre' => str_random(10),
                'photo' => "https://cdn-2.cinemaparadiso.co.uk/1712111035356_l.jpg"
            ]);
        }
    }
}
