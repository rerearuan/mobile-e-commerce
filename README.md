# TUGAS INDIVIDU PBP
**Nama**: Regina Meilani Aruan  
**NPM**: 2306275632

## Daftar Isi
1. [Tugas 7](#tugas-1)


## TUGAS 7

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
