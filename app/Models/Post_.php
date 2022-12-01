<?php

namespace App\Models;



class Post
{
 private static $blog_posts  = [
        [
        "title" => " Content Blog Pertama",
        "slug" => "judul-post-pertama",
        "author"=> "Muhamad Supriyanto",
        "isi" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo facere similique non, culpa inventore hic atque consequuntur et, aperiam aliquam rerum ex odio enim nostrum delectus est corrupti dolorem ratione quod sunt natus possimus, optio at exercitationem. Quis, sit vel. Ullam fugiat omnis, in consectetur ipsam vero quidem dignissimos nesciunt quasi vel distinctio, officiis corrupti non optio qui, asperiores nobis corporis sequi repellendus dolor facilis assumenda. Numquam a repellendus esse atque, qui laboriosam non ea tenetur modi beatae vitae assumenda doloremque eligendi aliquam voluptatem temporibus exercitationem voluptatum perspiciatis harum quo, minima ut saepe? Quisquam sapiente molestiae similique enim dolores cum!" ],
        [
        "title" => " Content Blog Kedua",
        "slug" => "judul-post-kedua",
        "author"=> "Rizki Irwansyah",
        "isi" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima aspernatur nihil, totam provident iusto, voluptatem excepturi ipsum, optio nulla debitis nam! Magni quia sapiente commodi nemo neque, illo tenetur. Veritatis, in iusto! Omnis maxime cum similique corrupti quaerat possimus repudiandae illum, culpa quis quibusdam ullam cumque illo ipsum mollitia rerum saepe voluptatem enim nihil laborum laboriosam temporibus expedita. Qui, praesentium veniam dolore dignissimos sed maxime aperiam cupiditate beatae ex facere iure debitis amet a, est quisquam commodi odit incidunt exercitationem esse necessitatibus neque? Cupiditate eaque praesentium tempore nemo doloremque sit velit hic deserunt quo iste iusto cum ad optio ipsa, quidem, ratione beatae minus maxime laboriosam impedit ex. Nobis sequi ipsum esse enim fuga voluptates, exercitationem dolor laborum porro sed. Autem iste recusandae aspernatur blanditiis fugiat neque. In rem ipsum odio impedit doloribus placeat voluptate, architecto autem, ad pariatur porro! Tenetur sed recusandae ut omnis earum ab provident rerum nisi accusamus esse libero hic totam veritatis exercitationem molestias, accusantium debitis minus non impedit dolorum quos voluptas quod officia! Maiores, aliquam? Quam aperiam vel iure non in vitae esse unde maxime, cum doloremque? Nulla expedita impedit deserunt, odio incidunt ab possimus sequi, vel odit earum cupiditate id saepe consequuntur quos quidem." ],
        [
        "title" => " Content Blog Ketiga",
        "slug" => "judul-post-ketiga",
        "author"=> "Irgi fahlevi",
        "isi" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illo esse perferendis mollitia asperiores fuga commodi obcaecati beatae adipisci natus ullam? Ducimus, deserunt hic! Exercitationem, quod reiciendis labore ullam magni cumque consectetur. Laborum adipisci dolorem numquam sint porro facilis rerum ea alias autem architecto officiis voluptatem, non tenetur suscipit voluptas aliquam ex molestiae nemo recusandae consectetur dolor odit illum! Id placeat quidem amet odio molestiae architecto, sapiente, alias dignissimos accusamus, possimus minima labore reiciendis praesentium repellat pariatur exercitationem cumque nihil nesciunt. Molestiae mollitia, sunt harum quod eaque obcaecati quo nihil, adipisci fugiat veritatis fuga unde non id quidem nulla, illo ea omnis. Adipisci soluta tempore explicabo, at odit corporis atque quae minima officiis in voluptates mollitia reprehenderit vero sint error ullam blanditiis quaerat odio consectetur sequi illum maiores quod? Dicta molestias, omnis eaque hic aspernatur repellendus suscipit delectus maiores cupiditate sequi dolorum, temporibus nisi doloribus itaque quasi, sunt modi distinctio ducimus.luptatum perspiciatis harum quo, minima ut saepe? Quisquam sapiente molestiae similique enim dolores cum!" ]

    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts =  static::all();

    return $posts ->firstWhere('slug',$slug);
    }

}
