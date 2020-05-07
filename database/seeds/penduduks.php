<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class penduduks extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        for($i=1;$i<=50;$i++){
            \App\penduduk::create([
                'nama'=> $faker->name,
                'umur'=> $faker->numberBetween(17,30),
                'alamat'=> $faker->address,
                'negara'=> $faker->country,
                'pekerjaan'=> $faker->jobTitle
            ]);
        }
    }
}
