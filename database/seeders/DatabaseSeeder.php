<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use GuzzleHttp\Promise\Create;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Muhamad Supriyanto',
            'username'=>'MuhamadSuprianto',
            'email' => 'Suprianto0559@gmail.com',
            'password' => bcrypt('12345')
        ]);
       User::factory(3)->create();
        // \App\Models\User::factory(10)->create();
        // User::create([
        //     'name' => 'Muhamad Supriyanto',
        //     'email' => 'Suprianto0559@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        // User::create([
        //     'name' => 'irgi fahlevi',
        //     'email' => 'irgifahlevi@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
    //    Category::factory(2)->create();
        Category::create([
            'name' => 'Web-Programing',
            'slug' => 'web-programing'
        ]);

         Category::create([
            'name' => 'Web-design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
            ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //      'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere,',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere, rem ab accusantium iusto labore illo placeat? Magni modi similique maxime placeat corporis in ad distinctio ullam laboriosam facere, odit cumque atque quae ducimus omnis, obcaecati error nulla id sit reiciendis corrupti eum? Accusantium et, porro libero laudantium quae iure recusandae est optio officia dignissimos vel eum ducimus, quod amet, beatae tempora neque suscipit nesciunt eveniet at harum ad veniam modi. Nisi ab quidem quos harum dignissimos quia eum tenetur minima veritatis, voluptatem ipsa obcaecati, odit accusamus iusto quo vel repudiandae expedita recusandae tempore totam, quibusdam vitae ut. Voluptatibus perferendis culpa nemo quia doloribus facere nobis, eius officiis tempora magni eum architecto illo, ad earum labore. Molestias voluptatibus quaerat cupiditate soluta in, optio excepturi, beatae adipisci cum, eaque id explicabo necessitatibus ullam at quos itaque dignissimos fugit illo architecto doloremque delectus omnis mollitia quae libero.',

        //     'category_id' => 2,
        //     'user_id' => 2

        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //      'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere,',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere, rem ab accusantium iusto labore illo placeat? Magni modi similique maxime placeat corporis in ad distinctio ullam laboriosam facere, odit cumque atque quae ducimus omnis, obcaecati error nulla id sit reiciendis corrupti eum? Accusantium et, porro libero laudantium quae iure recusandae est optio officia dignissimos vel eum ducimus, quod amet, beatae tempora neque suscipit nesciunt eveniet at harum ad veniam modi. Nisi ab quidem quos harum dignissimos quia eum tenetur minima veritatis, voluptatem ipsa obcaecati, odit accusamus iusto quo vel repudiandae expedita recusandae tempore totam, quibusdam vitae ut. Voluptatibus perferendis culpa nemo quia doloribus facere nobis, eius officiis tempora magni eum architecto illo, ad earum labore. Molestias voluptatibus quaerat cupiditate soluta in, optio excepturi, beatae adipisci cum, eaque id explicabo necessitatibus ullam at quos itaque dignissimos fugit illo architecto doloremque delectus omnis mollitia quae libero.',

        //     'category_id' => 1,
        //     'user_id' => 1

        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-Ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere,',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil fugiat reiciendis architecto, porro doloremque facere, rem ab accusantium iusto labore illo placeat? Magni modi similique maxime placeat corporis in ad distinctio ullam laboriosam facere, odit cumque atque quae ducimus omnis, obcaecati error nulla id sit reiciendis corrupti eum? Accusantium et, porro libero laudantium quae iure recusandae est optio officia dignissimos vel eum ducimus, quod amet, beatae tempora neque suscipit nesciunt eveniet at harum ad veniam modi. Nisi ab quidem quos harum dignissimos quia eum tenetur minima veritatis, voluptatem ipsa obcaecati, odit accusamus iusto quo vel repudiandae expedita recusandae tempore totam, quibusdam vitae ut. Voluptatibus perferendis culpa nemo quia doloribus facere nobis, eius officiis tempora magni eum architecto illo, ad earum labore. Molestias voluptatibus quaerat cupiditate soluta in, optio excepturi, beatae adipisci cum, eaque id explicabo necessitatibus ullam at quos itaque dignissimos fugit illo architecto doloremque delectus omnis mollitia quae libero.',

        //     'category_id' => 1,
        //     'user_id' => 1

        // ]);
    }
}
