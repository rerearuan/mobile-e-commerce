# TUGAS INDIVIDU PBP
**Nama**: Regina Meilani Aruan  
**NPM**: 2306275632

## Daftar Isi
1. [Tugas 7](#tugas-7)
2. [Tugas 8](#tugas-8)

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