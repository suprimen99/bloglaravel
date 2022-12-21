-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Des 2022 pada 11.44
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web-Programing', 'web-programing', '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(2, 'Web-design', 'web-design', '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(3, 'Personal', 'personal', '2022-12-09 12:54:14', '2022-12-09 12:54:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_120928_create_posts_table', 1),
(6, '2022_11_25_082141_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `category_id`, `user_id`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Quis ut quia.', 1, 3, 'sint-quia-necessitatibus-quam-et', 'Illo quaerat molestiae autem dolor autem. Et in voluptas ipsa itaque reiciendis. Id saepe vitae corporis inventore aut.', '<p>Hic in similique quia sed minus ad. Ipsum temporibus natus eaque aliquid ad placeat ad. Earum et accusamus quidem.</p><p>Vero error mollitia est quam. Et eius reiciendis pariatur itaque qui molestiae fugiat. Omnis sit accusamus fugit nulla nobis. Harum vel veritatis consequuntur temporibus repellendus iusto. Iusto perferendis unde est omnis nobis libero.</p><p>Rerum consectetur reprehenderit blanditiis fuga ut dolorem voluptatibus voluptates. Voluptas minima dolores quisquam recusandae. Qui vero veniam odio sit animi.</p><p>Quod similique laboriosam doloremque error. Cumque totam assumenda asperiores cum enim illo. Labore rerum consequatur debitis eius.</p><p>Fuga beatae facere ipsa unde. Vitae cumque id nostrum modi illum ut illum.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(2, 'Commodi dolore nihil voluptates nesciunt.', 1, 2, 'commodi-voluptatem-adipisci-eos-perferendis-ducimus', 'Et dignissimos atque eum saepe est dolorem voluptates. Beatae iure libero error blanditiis. Repellat ex cum quod et aperiam debitis necessitatibus et. Aperiam error nam nesciunt eum dolore.', '<p>Maiores expedita quia inventore vel. Ab optio harum omnis nisi. Qui nisi cupiditate exercitationem rerum.</p><p>Eum deleniti maiores minima hic. Ab ratione error quod repellendus ullam qui officia incidunt. Voluptatem eos aut odio voluptatibus cumque ut alias. Illum illo qui nisi culpa.</p><p>Magnam modi voluptate in qui omnis labore. Natus quia esse rerum magnam voluptatem voluptatem. Consequatur ut ut assumenda quia. Nesciunt sapiente dolorem error dolorem.</p><p>Cupiditate nisi dolore suscipit ducimus ipsa aut. Enim qui velit perferendis expedita. Consequuntur et ut dicta quia perspiciatis debitis alias. Et repudiandae reiciendis saepe omnis.</p><p>Consequuntur in sint eos aliquid esse minima. Odio praesentium velit rerum aut aperiam. Nam omnis odit enim dolorum earum ipsam ipsam.</p><p>Minus facere voluptates odit est. Commodi qui officia quis quasi voluptas mollitia ut. Officiis ratione corporis ut quia odio similique.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(3, 'Repellat ut repellat.', 2, 2, 'deleniti-inventore-assumenda-ipsum-laborum-quo', 'Necessitatibus quis qui porro error voluptatum autem omnis. Distinctio ab eum ut qui. Architecto minus sed libero suscipit quis eum ab.', '<p>Hic quia aliquid ut nihil consectetur placeat. Doloremque qui dolorum saepe qui sapiente. Quod et ea ipsam error nihil. Natus numquam adipisci iure occaecati ducimus quae dicta.</p><p>Eos quod amet tenetur error et assumenda sunt. Eligendi cupiditate nulla non consectetur impedit. Eos commodi est quos hic accusamus doloribus eaque eos.</p><p>Aut nulla quia velit in aspernatur nihil dolorum. Dignissimos aut officia quia rem beatae. Cupiditate ut eaque blanditiis deserunt assumenda.</p><p>Voluptates aut odit incidunt fugiat porro similique. Iste velit illum quisquam sunt aut consequatur itaque. Unde nam quisquam odio ipsum. Necessitatibus natus autem iure eligendi ut.</p><p>Earum dolore laudantium dolor sit a. Nam sed qui asperiores optio. Velit sunt vero quia.</p><p>Quasi reprehenderit repellat voluptates repellendus at error vel. Repellat inventore suscipit ut nobis quo perspiciatis et. Optio vel non fugit dignissimos itaque eum magnam. Repudiandae eum error sit fuga dolorem.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(4, 'Quia dolor.', 1, 1, 'ullam-quibusdam-sapiente-dicta-sunt-nostrum', 'Voluptas ut quam earum placeat. Nisi laboriosam ducimus corporis magni ea possimus. Ratione error optio consequatur et iste beatae. Pariatur mollitia praesentium quis est molestiae dolorum.', '<p>Consequuntur cumque praesentium sed est aspernatur qui velit. Aut et velit minima velit dolores incidunt. Omnis officia nobis doloremque autem. Eaque omnis molestiae et necessitatibus sed.</p><p>Numquam reiciendis fugiat natus atque qui quam nostrum. Aut tempora eius suscipit neque cupiditate. Nesciunt tenetur autem provident.</p><p>Est quia modi et quas cumque. Quis deserunt voluptas dolorem reiciendis dolor. Repellat nihil occaecati ut nihil.</p><p>Fugiat consequatur rerum praesentium nemo rem libero. Quod rerum dicta quos et reprehenderit. Explicabo nisi consequatur aut blanditiis. Ipsa et qui omnis voluptas quod doloribus.</p><p>Placeat nam ut est fuga accusamus non. Qui repellat amet dolores minima quo nostrum. Nemo magni aut est eos.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(5, 'Ipsam est sint et accusamus pariatur vero non neque.', 2, 1, 'ut-eveniet-voluptatem-aut-aspernatur', 'Odio in cum magni blanditiis. Est voluptate non molestias omnis dignissimos. Omnis a rerum modi ipsa praesentium ea. Odio cupiditate suscipit sunt natus at rerum ut.', '<p>Velit in aut quia aut et. Rerum dolores distinctio molestias recusandae. Voluptatem dolorem consequatur sed neque.</p><p>Aperiam omnis nesciunt voluptatem fugiat voluptates autem vel et. Tempore vel nihil ullam rerum necessitatibus atque autem. Autem illum voluptatem commodi debitis nihil blanditiis.</p><p>Repellat quia corporis sint in expedita eaque ut. Culpa veritatis rerum minus maxime.</p><p>Voluptatem itaque consequatur rerum voluptatem sunt sint sequi vero. Placeat commodi recusandae quaerat est ratione id. Necessitatibus consequatur natus quia provident sed nisi eos.</p><p>Asperiores voluptatum velit rerum ut qui qui. Ex cupiditate aperiam maiores totam. Inventore facilis alias odit aut deserunt facilis non dolorem. Consequatur sunt consequatur unde consequatur recusandae tempora.</p><p>Corrupti aperiam quia vitae sed quae rerum. Voluptatem repellendus tempora ad fugit. Saepe est voluptatibus numquam. Quis quia esse excepturi sunt est voluptatibus.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(6, 'Rerum id dolores enim illum quia excepturi et adipisci cupiditate.', 1, 3, 'et-nisi-itaque-voluptatum-illo-corporis-voluptatum-ea', 'Eius eius id alias et quisquam aliquid eaque. Voluptate qui laudantium sed nesciunt corrupti itaque repellat est. Beatae tempora molestias voluptate at vel qui dolorum. Molestias eos quod id ut.', '<p>Tempora illo reprehenderit sunt et expedita excepturi est. Incidunt et molestiae repellat inventore cupiditate sapiente rerum. Nesciunt modi deserunt commodi non tempore.</p><p>Sapiente cum et aut similique. Voluptas voluptatem porro est ut ut fuga.</p><p>Aut odit rem reprehenderit possimus. Quidem quaerat sit modi incidunt consequatur. Ut ipsum ad et et iure consectetur. Doloremque et qui explicabo sit excepturi porro.</p><p>Veritatis dolores libero libero et et. Id vel veritatis architecto possimus beatae. Sint possimus ut laborum velit reprehenderit eius.</p><p>Saepe id cum quidem pariatur laborum. Dolor minus ut placeat rerum omnis molestiae et. Omnis et quia et mollitia harum aperiam officiis. Omnis nostrum quisquam consequatur.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(7, 'Beatae voluptatem dolores facere.', 1, 1, 'illum-voluptatem-debitis-aliquid-et-aut-rerum-quo-sint', 'Dolore dolor in et numquam molestias modi. Eveniet voluptate ratione quia quia. Totam ut eos rerum aut qui quidem est.', '<p>Exercitationem itaque temporibus culpa nemo repellat facere optio. Similique delectus aut porro quos. Ipsam quaerat placeat aut deleniti velit. Nemo sunt ut suscipit sed fugit esse.</p><p>Ut facilis ad error ea reprehenderit. Hic tempore doloremque velit ea. Itaque minus blanditiis qui consequatur sint consequatur cupiditate illum. Blanditiis autem eos est dolores aut et doloribus.</p><p>Dolor velit facilis est unde sed consequuntur. Earum deleniti recusandae rerum. Maxime et atque dolor beatae enim.</p><p>Quod impedit voluptatem officia est autem quos ut. Asperiores iste libero suscipit nulla. Placeat fuga rem voluptatem non nisi.</p><p>Beatae sit et dolorum sint eius doloremque. Deleniti eum ex ut minus assumenda delectus sit ad. Nihil quo et corporis unde.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(8, 'Quaerat nostrum voluptates dignissimos sit voluptas.', 2, 3, 'esse-et-eius-dolorem-aliquid', 'Qui deleniti eum placeat quia quaerat. Vel assumenda ipsum error vero veritatis. Vel magni cupiditate fugit accusamus natus praesentium. Est iusto quos eos.', '<p>Aut sit odit iusto perspiciatis consequuntur. Rerum ipsam nihil enim nulla. Et dolorum ut voluptate totam consequatur autem libero. Dolores natus vero sit quis et exercitationem quam.</p><p>Est quia recusandae facilis incidunt. Omnis fuga velit perspiciatis minima. Provident incidunt qui expedita nulla ut. Architecto adipisci non molestias harum.</p><p>Sunt eos laboriosam illo dolor sunt. Temporibus quas repellendus fuga doloribus. Omnis ut eum iste molestiae.</p><p>Sed facilis quia minus quaerat id. Corporis vitae animi sequi reiciendis beatae. Ut a aut adipisci. Maxime dolorem quidem vero.</p><p>Corrupti nihil voluptatem ad non est. Veritatis ut repellendus non excepturi qui assumenda magnam. Explicabo sequi eos et. Occaecati laborum amet sunt labore omnis.</p>', NULL, '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(9, 'Non voluptatem architecto.', 1, 3, 'a-est-dolor-reiciendis-vero-et', 'Reprehenderit sit sapiente hic velit. Aspernatur pariatur aut voluptatem beatae qui quis quia. Culpa nulla voluptatum eum ullam tempore aperiam atque hic. Et dolores placeat doloremque reprehenderit eos accusantium repellat.', '<p>Voluptatem vitae corporis officia. Dolores dolorum velit possimus voluptatem et. Accusamus quibusdam autem nihil voluptatem est quia et. Iste vitae impedit officiis maxime repellat.</p><p>Dignissimos repudiandae non dignissimos reprehenderit. Vel est impedit quisquam rerum. Quam pariatur est reiciendis illum quam.</p><p>Accusantium repellat animi maiores aliquid debitis voluptas nesciunt. Dolores nam eligendi unde voluptatem sint.</p><p>Libero non quae odit dignissimos. Odit nostrum dolores quis sunt. Nisi unde possimus vel rerum pariatur et qui.</p><p>Qui quas fuga alias aut debitis. Molestiae eius sunt impedit sit aut. Ullam pariatur quae corrupti consequatur minima quis aperiam. Consequatur quis numquam asperiores eveniet molestiae nemo rerum at.</p>', NULL, '2022-12-09 12:54:15', '2022-12-09 12:54:15'),
(10, 'Voluptas et ea laboriosam.', 1, 3, 'nihil-deserunt-ut-est-quia-ex-praesentium', 'Quidem et qui delectus laudantium voluptatem aut omnis. Iste odio laudantium omnis architecto eum aut perferendis ut. Soluta ab quo eos ut iure dolore. Esse exercitationem repudiandae vel sit voluptatem ut.', '<p>Temporibus vel non omnis ea nulla ducimus aut. Molestiae ut aliquid dolores officia aut iusto. Aliquam enim non sed qui.</p><p>Quam dolores sequi et et quia quisquam. Quia soluta voluptatem esse quaerat. Est repellendus ipsam nostrum vero iste sunt. Et id voluptas beatae porro natus.</p><p>Ut dolorum aperiam quibusdam rerum. Quisquam fugiat aut eveniet cumque.</p><p>Neque accusamus ipsa a exercitationem. Blanditiis id quis maxime quo aut repellat sint.</p><p>Asperiores placeat qui aut. Nemo et quis perspiciatis temporibus. Aperiam repellendus accusantium omnis rerum. Fuga repellendus dolores exercitationem consectetur.</p><p>Inventore vel aspernatur temporibus at. Qui et quasi ducimus aspernatur. Doloribus quibusdam nihil beatae quasi.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(11, 'Nihil aut et asperiores consectetur ullam.', 2, 2, 'nihil-id-ut-voluptatem-et-quia-inventore-magnam-perspiciatis', 'Ut repellat qui provident omnis. Voluptas nemo qui sapiente doloremque. Consequatur labore aut praesentium. Consequuntur alias sunt occaecati.', '<p>Atque ratione nobis velit rerum nesciunt eos. Eaque harum nisi dolor eius ipsum. Non in reprehenderit quia suscipit voluptatem voluptate omnis.</p><p>Perspiciatis aut ullam consectetur autem quos voluptatum voluptas quidem. Illo corrupti qui dolores adipisci. Nesciunt modi laudantium voluptas.</p><p>Ullam dolorum vero nulla voluptatem natus accusamus laudantium. Ullam expedita est esse fuga. Quis consectetur velit fugiat nulla consequatur incidunt blanditiis.</p><p>Eum quis ex molestias. Ut harum amet perferendis voluptatem rem harum. Sint doloremque placeat labore aspernatur ducimus mollitia veniam.</p><p>Totam qui natus non libero eveniet illum consectetur. Maxime veniam blanditiis illum eos hic necessitatibus dolorem et. Expedita eius dignissimos rerum. Ea vero iusto quae neque.</p><p>Accusantium beatae quo alias voluptatibus porro dolore. Et inventore autem ducimus deleniti repellat harum impedit rem. Aliquam aliquam eum recusandae et inventore omnis.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(12, 'Nihil qui rerum.', 1, 1, 'sed-quisquam-velit-ipsam-ducimus-ut-reiciendis-repudiandae', 'Vero expedita vel est quo voluptas molestiae. Voluptas nisi non officiis quia minus. Vero a eaque sit fuga. Rerum velit adipisci occaecati assumenda fugiat ipsa pariatur quas.', '<p>Natus tenetur error omnis consequatur totam. Nam quo voluptatibus recusandae. Quis reiciendis sed omnis delectus quam velit. Est inventore est ratione.</p><p>Vitae quas eveniet libero velit qui id. Eaque voluptatem facilis tempora possimus. Fugit at autem sint id necessitatibus. Voluptas suscipit corporis dolores optio nulla aut ducimus.</p><p>Et ipsam eum nihil quidem inventore veritatis et. Sequi omnis nihil voluptatem eum voluptate minus sit.</p><p>Quos ut minus occaecati et. Molestiae autem officia minima ipsum libero inventore. Quisquam optio veniam doloremque velit recusandae possimus quia quisquam.</p><p>Odio ipsum ex aliquam id rem in ab et. Architecto quo excepturi sed. Ut ullam et consectetur. Eligendi et aut velit delectus non est mollitia at. Vel dolorem non suscipit sed.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(13, 'Eum sequi dolor aliquid in exercitationem.', 2, 3, 'corrupti-placeat-beatae-est', 'Autem est quam consequatur nostrum. Impedit rem facere reiciendis consequuntur quis sint velit.', '<p>Atque sint enim aliquid ut corrupti distinctio sit. Qui culpa odit qui impedit. Amet reprehenderit velit quod quibusdam.</p><p>Iure reiciendis nisi voluptate dolores nihil et. Perspiciatis voluptas explicabo nihil optio est libero. Quo autem expedita explicabo qui iure non.</p><p>Voluptatem sunt aspernatur accusamus deserunt animi. A reprehenderit mollitia ratione officia.</p><p>Adipisci autem itaque ex ducimus sed aut. Officia qui et nisi accusantium laboriosam eligendi.</p><p>Delectus quo velit eum incidunt dolorum tenetur eum. Laudantium voluptatem quo eum voluptas. Dignissimos eum porro nesciunt laborum aperiam aut voluptas. Sed consequuntur distinctio quasi fugit temporibus rerum.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(14, 'Quo inventore ea.', 1, 3, 'et-reprehenderit-rerum-ipsa-eos', 'Et fugiat labore inventore quae recusandae quis qui illo. Dolorem nam at autem. Consequuntur nostrum ducimus aut qui officiis sit aut. Aut omnis odio earum accusamus nisi optio harum.', '<p>Ducimus qui qui soluta eaque accusamus. Non quo vel aut consequatur ipsum vero itaque.</p><p>Expedita dolorem ut temporibus provident accusantium. Quo dicta non aperiam illum voluptatibus delectus et. Voluptatem perspiciatis dolor incidunt aspernatur.</p><p>Expedita consequatur provident alias fugit. Voluptatem molestiae in perferendis non facere natus. Quos necessitatibus et et fuga iure sint. Numquam est sapiente numquam praesentium minus.</p><p>Sit quidem provident nihil quidem dolor. Ratione magni animi in laboriosam eos. Ut voluptate voluptatem nobis iure dolorem illo. Et iure laboriosam voluptatem possimus fugit aut a.</p><p>Blanditiis distinctio quis eum aut. Debitis enim iste error non eos minus. Et placeat excepturi corporis id ipsum illo. Laboriosam officia vero commodi.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(15, 'Adipisci tempore.', 1, 2, 'dolorem-id-ut-quia-quo', 'Quam qui omnis corporis sed blanditiis. Consequatur illum omnis eum iste recusandae. Molestias vero omnis quasi dolorem sit.', '<p>Et adipisci sit fugiat velit vel eum. Aut quod veniam itaque deserunt omnis natus. Dicta voluptas et quaerat accusamus non dolorem impedit.</p><p>Odit voluptatem rem error optio recusandae ullam praesentium. Sit nostrum cupiditate ut eveniet et. Sed labore vel quaerat quia est aut.</p><p>Unde blanditiis voluptas eveniet saepe dolor molestiae. Voluptatem ea ad blanditiis eos assumenda. Adipisci et vel magni aliquid. Quis facilis nemo eaque sequi aut est.</p><p>Vel itaque enim ullam praesentium ipsum pariatur. Optio commodi recusandae voluptates ut unde quisquam amet. Reprehenderit animi asperiores quasi est consequatur. Debitis expedita libero perspiciatis nihil voluptas placeat.</p><p>Laborum quam nulla aut enim rerum ea et dignissimos. Aut ducimus tempora voluptatem perspiciatis. Odit quis labore numquam.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(16, 'Suscipit aut voluptatem tenetur enim sunt et.', 2, 2, 'ex-quis-ipsum-voluptatem-omnis-in-quia', 'Enim quas laudantium veniam est molestiae. Natus molestias quod blanditiis qui aspernatur quidem. Hic eveniet explicabo accusantium culpa assumenda impedit repellendus.', '<p>A molestiae non reiciendis sint. Assumenda libero recusandae nostrum natus sed in est. Qui hic veniam repellendus ut reiciendis iusto veniam.</p><p>Deserunt repellat minus et ut et. Assumenda qui vel incidunt hic quam ea. Ut quae nostrum aut minus numquam ut. Earum eos debitis iure aut.</p><p>Provident quia officiis amet earum doloribus quidem. Voluptatum modi in numquam hic molestiae. Libero quia velit molestias debitis.</p><p>In in esse et voluptatem. Earum est numquam ea sint earum qui. Beatae facilis quidem voluptates corrupti illum perspiciatis.</p><p>Autem ut facilis enim aut ad sit hic. Officiis nobis officia quo est earum illum. Repudiandae architecto a autem magni esse aut sunt.</p><p>Ipsam voluptatibus est doloribus earum eos ipsa. Labore commodi ipsum earum tenetur eligendi ut. Tenetur libero voluptatem quisquam commodi.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(17, 'Quis aut similique nihil.', 1, 1, 'et-et-rerum-dolorem', 'Aspernatur fugiat ut doloribus nostrum. Dicta non nihil doloremque eveniet sed labore. Sunt reprehenderit ipsum et nesciunt omnis doloribus aut.', '<p>Itaque architecto odit voluptas ad. Tempore ut consectetur rerum dolores quis quia placeat.</p><p>Tempore tempora expedita quos dolor doloribus fugiat omnis. Error sit et itaque molestiae qui. Accusantium sed ut aspernatur.</p><p>Eius et autem et dolorem est culpa. Facilis commodi vitae quis tenetur cupiditate debitis culpa architecto. Neque sunt sit fugit commodi sit dolor sint.</p><p>Animi porro sunt et harum voluptatem qui. Eveniet aut ratione qui sapiente quia libero dolore. Aut modi enim nemo. Delectus error dignissimos maiores culpa qui qui.</p><p>Aspernatur amet molestiae placeat ab repellat rerum sit. Vel iste asperiores voluptatem quaerat ipsam. Officia assumenda consectetur quam ut tempora mollitia voluptas. Illo magnam ut et rerum nam odit.</p><p>Rerum mollitia omnis odit. Voluptatum sint quod sed ipsam voluptatibus ab. Delectus cupiditate quos voluptates.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(18, 'Rerum quis illum nostrum modi illo repudiandae.', 2, 2, 'id-sint-ab-sint-officiis-veritatis-non-minus', 'Omnis quo libero quibusdam est natus beatae sapiente et. Aperiam ipsum accusamus ut architecto. Odio soluta similique sit quod nihil ipsam voluptatem. Sit quia unde expedita voluptate nulla. Harum corrupti voluptas autem sed.', '<p>Sit dolores distinctio voluptates quo et quas. Blanditiis incidunt est quisquam voluptas aut. Ea eos sequi aut consequatur.</p><p>Excepturi autem nihil voluptatum sit adipisci. At a amet dolor et. Rerum delectus enim in magni at sit sit nobis.</p><p>Consequatur quia reprehenderit ratione ullam vero illo consequatur aut. Rem beatae harum alias id. Repellat fuga veritatis sunt esse alias. Molestiae eum blanditiis commodi repudiandae libero. Iste dolores et qui quia quia error odit.</p><p>Saepe perferendis et repellendus nam eius repellendus. Ut ipsa dolorem saepe eum et adipisci cum aliquid. Saepe quibusdam saepe voluptatem dicta. Optio ea iure dolore repellendus modi incidunt.</p><p>Eos ullam qui velit dicta repudiandae. Sunt molestias doloribus pariatur quaerat harum. Dignissimos id molestiae temporibus quasi. Ea ut repudiandae quos rerum vitae.</p><p>Consequatur ipsa molestiae quos occaecati ut recusandae debitis. Ab et voluptas velit blanditiis et. Aut rerum rerum iusto commodi ipsum molestiae dignissimos. Vel et sapiente et ipsa doloribus et sed.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(19, 'Dolor veritatis qui adipisci.', 1, 2, 'repellat-placeat-distinctio-blanditiis-sunt', 'Laudantium ea aut ex fugit et. Non necessitatibus vel non molestiae quo nobis voluptatum. Nemo sequi qui ut sed et corrupti quos.', '<p>Hic nemo enim suscipit ut sed quisquam. Distinctio inventore id nihil consequatur aliquam maxime. Id quia fuga facere praesentium autem itaque. Aut quae quas et quo.</p><p>Aut voluptatem amet exercitationem temporibus repudiandae veniam. Aliquid excepturi similique ex autem. Tenetur officia aut sit ut officia.</p><p>Natus aut fugiat dicta sequi consequatur officiis voluptatem. Quo et magnam incidunt quisquam necessitatibus corrupti.</p><p>Porro omnis quis nam. Voluptatibus culpa dolor eaque nihil numquam. Perspiciatis sed facilis recusandae.</p><p>Facere reprehenderit quam maxime possimus asperiores quidem est sint. At sed nostrum voluptatem nemo eius minima est facilis. Iste et recusandae et dolor tempore tempora est consequatur.</p><p>At ipsum optio et debitis ut unde temporibus. Omnis voluptatem non minima quia quam. Reprehenderit voluptas consequatur veritatis omnis nulla eius.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16'),
(20, 'Eos recusandae quisquam nesciunt voluptatibus ut.', 2, 2, 'quia-et-sit-voluptatem', 'Consectetur quos autem porro voluptatem sint. Sed voluptate aspernatur et maiores quaerat quia est.', '<p>Et amet molestiae nam quaerat rerum. Inventore natus quae cum dolor iste doloremque minus id. Qui soluta ut et aperiam quos repellat. Et similique aperiam sint hic.</p><p>Tenetur est maiores et temporibus. Non laborum sint a rerum quam beatae eveniet. Ullam quia tempore magnam voluptatem fugiat aut. Veritatis cumque quia iure.</p><p>Aspernatur et ea voluptatem ut. Numquam aut accusantium eius dolorem eos odit sit. Sit inventore quia commodi quidem.</p><p>Nesciunt consequuntur dolor iusto voluptatum itaque rerum. Vitae autem suscipit ab delectus ut repudiandae dolor. Porro ipsam enim et quaerat. Perspiciatis nobis atque consequatur omnis placeat.</p><p>Labore sit ipsa rerum dolor repudiandae nihil ipsa. Aut magni nisi voluptatum. Explicabo id aut ad. Quod eos sunt et eos.</p><p>Culpa minima in velit hic repellat temporibus. Ex qui consequatur dolores saepe. Doloribus est animi et quidem.</p>', NULL, '2022-12-09 12:54:16', '2022-12-09 12:54:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ayu Nova Padmasari', 'zalindra42', 'twibowo@example.com', '2022-12-09 12:54:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Nj6vHx8m0', '2022-12-09 12:54:13', '2022-12-09 12:54:13'),
(2, 'Keisha Zulaika', 'liman59', 'rwacana@example.com', '2022-12-09 12:54:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pRRcYAMhzX', '2022-12-09 12:54:14', '2022-12-09 12:54:14'),
(3, 'Tantri Riyanti S.E.I', 'sitorus.halima', 'usamah.lidya@example.org', '2022-12-09 12:54:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Guuur9DpQd', '2022-12-09 12:54:14', '2022-12-09 12:54:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
