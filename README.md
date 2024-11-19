# TUGAS INDIVIDU PBP
**Nama**: Regina Meilani Aruan  
**NPM**: 2306275632

## Daftar Isi
1. [Tugas 7](#tugas-7)
2. [Tugas 8](#tugas-8)
3. [Tugas 9](#tugas-9)

## Tugas 7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Dalam Flutter, Stateless Widget adalah widget yang tidak memiliki keadaan yang dapat berubah selama siklus hidupnya. Widget ini hanya dibangun sekali dan tidak akan diperbarui kecuali ada perubahan pada widget induknya. Contohnya termasuk widget seperti `Text`, `Icon`, dan `Container`. Sebaliknya, Stateful Widget adalah widget yang memiliki keadaan internal yang dapat berubah. Widget ini dapat memperbarui tampilannya ketika keadaan berubah, seperti saat interaksi pengguna. Contoh penggunaan Stateful Widget adalah `Checkbox` dan `TextField`.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Dalam proyek e ini, widget yang digunakan meliputi `Scaffold`, `AppBar`, `Text`, `Row`, `Column`, `Expanded`, `GridView`, `Card`, `Container`, dan `InkWell`. `Scaffold` menyediakan struktur dasar tampilan. `AppBar` digunakan sebagai bilah judul di bagian atas aplikasi, yang berisi nama aplikasi BambooShop dengan warna latar belakang hijau (Colors.green[800]). `GridView.count` digunakan untuk menampilkan tombol dalam bentuk grid. Setiap tombol ditampilkan sebagai kartu dengan ikon dan teks di dalamnya. `Icon` digunakan untuk menampilkan ikon pada setiap tombol di grid, seperti ikon untuk Lihat Daftar Produk, Tambah Produk, dan Logout. `Text` untuk menampilkan teks pada aplikasi, `Row` dan `Column` untuk mengatur layout, `Expanded` untuk mengisi ruang yang tersedia, `Card` untuk memberikan efek bayangan pada tampilan, `Container` sebagai wadah untuk widget lain, dan `InkWell` memberikan efek sentuhan saat ditekan.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan dalam keadaan widget yang perlu direfleksikan dalam tampilan. Ketika `setState()` dipanggil, Flutter akan memanggil kembali metode `build()` untuk memperbarui antarmuka pengguna. Variabel yang terdampak adalah semua variabel yang digunakan dalam widget yang sedang di-build, khususnya yang berada dalam kelas yang memanggil `setState()`, sehingga perubahan pada nilai variabel tersebut akan terlihat pada UI.

### 4. Jelaskan perbedaan antara const dengan final.

Perbedaan antara `const` dan `final` terletak pada cara mereka menyimpan nilai. Variabel yang dideklarasikan dengan `final` hanya dapat diinisialisasi satu kali, tetapi nilainya dapat ditentukan saat runtime. Sementara itu, variabel yang dideklarasikan dengan `const` adalah nilai konstan yang tidak dapat diubah dan harus diinisialisasi saat kompilasi, sehingga akan menjadi lebih efisien dalam penggunaan memori.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

Pertama, saya memulai proyek flutter ini saya dengan membuat direktori mobile e-commerce dan repositoru baru di github, kemudian membuat proyek e_commerce dengan flutter create e_commerce (sesuai dengan nama proyek django saya).

Selanjutnya, saya membuat file menu.dart di folder lib untuk tampilan utama dan mulai merapihkan kode dari main.dart. Saya mengubah warna aplikasi BambooShop ini menjadi hijau dengan mengganti colorScheme.

Pada menu.dart, saya mengubah `MyHomePage` menjadi `StatelessWidget`. Warna aplikasi diubah menjadi hijau menggunakan `Colors.green[800]` untuk AppBar dan warna yang serasi untuk elemen lain

Dalam kelas `MyHomePage`, saya menambahkan properti untuk menyimpan NPM, nama, dan kelas pengguna di `InfoCard`. Saya juga membuat daftar items yang berisi instans dari `ProductHomepage` untuk setiap tombol yang akan ditampilkan di halaman.

Selanjutnya, saya membuat tiga tombol sederhana dengan ikon dan teks di dalam kelas `MyHomePage`. Saya menggunakan widget `GridView.count` untuk menampilkan tombol-tombol tersebut dalam bentuk grid, di mana setiap tombol direpresentasikan oleh instans dari kelas `ProductCard`.

Saya juga mengimplementasikan warna-warna yang berbeda untuk setiap tombol. Tombol Lihat Daftar Produk menggunakan warna biru tua, Tambah Produk menggunakan warna oranye, dan Logout menggunakan warna merah. Dengan cara ini, setiap tombol memiliki identitas visual yang jelas. 

Terakhir, saya membuat fitur untuk memunculkan Snackbar saat tombol ditekan. Dengan menambahkan event `onTap` di setiap tombol, saya memastikan bahwa pesan yang sesuai akan muncul di layar, yaitu "Kamu telah menekan tombol Lihat Daftar Produk", "Kamu telah menekan tombol Tambah Produk", dan "Kamu telah menekan tombol Logout".

Setelah mengintegrasikan InfoCard dan ItemCard untuk ditampilkan di MyHomePage, saya mencoba untuk check kebenaran kode dengan flutter analyze. 


## Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Di Flutter, `const` digunakan untuk mendeklarasikan objek atau widget yang tidak berubah selama siklus hidup aplikasi. Keuntungan menggunakan `const` adalah Flutter dapat mengoptimalkan kinerja dengan menyimpan instansi objek yang sama daripada membuat yang baru setiap kali build. Ini mengurangi overhead dan meningkatkan efisiensi memori.

**Kapan menggunakan `const`:**
- Saat widget atau objek tidak memerlukan perubahan setelah pertama kali dibangun (misalnya widget statis atau nilai-nilai tetap).
  
**Kapan tidak menggunakan `const`:**
- Jika widget atau objek akan mengalami perubahan atau memerlukan state yang berbeda.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
`Column` dan `Row` adalah widget yang digunakan untuk menyusun elemen di dalam aplikasi. Perbedaannya adalah:
- **Column** menyusun elemen secara vertikal (atas ke bawah), cocok digunakan untuk menata form atau daftar elemen yang terpisah secara vertikal.
- **Row** menyusun elemen secara horizontal (kiri ke kanan), cocok untuk menata elemen-elemen yang ingin ditampilkan dalam satu baris.

**Contoh penggunaan:**

- **Column**:
  ```dart
  Column(
    children: [
      Text('Nama Produk'),
      TextField(),
      Text('Harga'),
      TextField(),
    ],
  );

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada form yang saya buat, saya menggunakan elemen-elemen input berikut:

- **TextFormField**: Digunakan untuk memasukkan data teks seperti:
  - Nama Produk
  - Deskripsi Produk
  - Kategori Produk
  - Ulasan Produk

- **TextFormField dengan tipe `TextInputType.numberWithOptions`**: Digunakan untuk memasukkan data numerik, seperti:
  - Harga Produk
  - Stok Produk

- **TextFormField dengan tipe `TextInputType.numberWithOptions(decimal: true)`**: Digunakan untuk memasukkan rating produk dalam format angka desimal.

Selain elemen input yang telah disebutkan di atas, ada beberapa elemen input Flutter lain yang tidak saya gunakan dalam aplikasi ini, di antaranya:

- **DropdownButton**: Digunakan untuk memilih dari daftar pilihan, misalnya untuk memilih kategori produk.
- **Checkbox**: Digunakan untuk input berupa pilihan yang dapat diaktifkan atau dinonaktifkan.
- **Radio**: Digunakan untuk memilih satu opsi dari beberapa pilihan yang tersedia.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema aplikasi di Flutter, saya menggunakan `ThemeData` pada `MaterialApp` untuk mendefinisikan skema warna, font, dan elemen-elemen visual lainnya yang akan diterapkan secara konsisten di seluruh aplikasi. Pada aplikasi yang saya buat, saya telah mengimplementasikan tema dengan menggunakan `Theme.of(context).colorScheme.primary` pada AppBar dan widget lainnya, untuk memastikan bahwa tampilan aplikasi seragam dan terkoordinasi dengan baik. Dengan pengaturan tema ini, aplikasi menjadi lebih konsisten dan memberikan pengalaman pengguna yang lebih baik.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Navigasi dalam Flutter ditangani dengan menggunakan `Navigator` dan `Routes`. Saya menggunakan metode `Navigator.push` untuk berpindah ke halaman baru dan `Navigator.pop` untuk kembali ke halaman sebelumnya.

Pada aplikasi yang saya buat, navigasi diatur dengan mengarahkan pengguna dari satu halaman ke halaman lain menggunakan tombol-tombol yang ada, seperti mengarahkan pengguna dari halaman form produk ke halaman konfirmasi setelah data produk disimpan. Dengan menggunakan `Navigator`, aplikasi dapat menangani perpindahan antar halaman secara mulus dan menjaga alur aplikasi tetap lancar.


## Tugas 9

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Membuat model penting untuk memetakan struktur data JSON secara jelas dan terorganisir. Model membantu memastikan data yang diterima atau dikirim sesuai dengan format yang diharapkan, mengurangi potensi error saat parsing atau pengaksesan data. Tanpa model, aplikasi lebih rentan terhadap kesalahan, terutama jika struktur data berubah atau menjadi kompleks, yang bisa menyebabkan bug atau data tidak diproses dengan benar.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library http digunakan untuk melakukan permintaan HTTP, seperti GET atau POST, untuk mengirim dan menerima data antara aplikasi Flutter dan server. Library ini juga mengatur header, mengelola respons server, dan mempermudah pengolahan data JSON. Dengan menggunakan http, komunikasi antara aplikasi dan backend menjadi lebih sederhana dan efisien.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest mengelola autentikasi pengguna dengan menyertakan cookie session di setiap permintaan ke server. Ini memastikan sesi pengguna tetap aktif tanpa perlu login ulang. Membagikan instance CookieRequest di seluruh aplikasi penting agar setiap komponen aplikasi dapat mengakses sesi yang sama, menjaga konsistensi dan keamanan autentikasi di seluruh aplikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Pengguna mengisi form add product di Flutter, yang kemudian mengirimkan data ke server via HTTP. Server memproses data dan mengirimkan respons JSON. Di Flutter, data JSON diterima, diproses, dan ditampilkan di UI menggunakan state management untuk memperbarui tampilan dengan data terbaru.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter

Pada login, data akun dikirim ke server untuk verifikasi, dan jika valid, server mengembalikan cookie sesi. Pada registrasi, data akun baru diperiksa dan disimpan di server. Untuk logout, aplikasi menghapus cookie sesi. Setelah login berhasil, aplikasi menampilkan menu dan product card berdasarkan status autentikasi pengguna.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

a. Mengimplementasikan Fitur Registrasi Akun
Buat halaman registrasi dengan input untuk nama, email, dan password. Kirim data ke endpoint Django menggunakan pbp_django_auth. Jika registrasi berhasil, arahkan pengguna ke halaman login.

b.  Membuat Halaman Login
Buat halaman login dengan input email dan password. Gunakan pbp_django_auth untuk autentikasi ke endpoint Django. Jika berhasil, session disimpan otomatis dan pengguna diarahkan ke halaman utama.

c. Mengintegrasikan Sistem Autentikasi
Gunakan pbp_django_auth untuk mengelola autentikasi berbasis session. Pastikan setiap request ke backend membawa cookie session, yang divalidasi oleh middleware Django.

d. Membuat Model Kustom
Buat model Product di Django dengan atribut seperti name, price, description, dll. Gunakan serializer untuk menampilkan data dalam format JSON melalui endpoint API.

e. Membuat Halaman Daftar Item
Ambil data dari endpoint show_json2 di Django. Pastikan endpoint show_json2 di Django menggunakan serializer untuk mengembalikan daftar produk dalam format JSON. Fetch data dari endpoint ini menggunakan pbp_django_auth. Convert data JSON ke model Product di Flutter. Tampilkan data dalam daftar menggunakan ListView.builder, hanya menampilkan atribut name, price, dan description.

f. Membuat Halaman Detail Item
Tambahkan navigasi dari daftar item ke halaman detail. Di halaman detail, tampilkan semua atribut produk seperti name, price, description, dan lainnya. Sediakan tombol kembali ke halaman daftar item.

g. Filter Berdasarkan Pengguna
Modifikasi endpoint show_json2 di Django untuk hanya mengembalikan data produk yang terkait dengan pengguna login. Gunakan session autentikasi dari pbp_django_auth untuk mengambil data terfilter. Tampilkan hasil filter di halaman daftar item.