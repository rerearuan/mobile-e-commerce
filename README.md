# TUGAS INDIVIDU PBP
**Nama**: Regina Meilani Aruan  
**NPM**: 2306275632

## Daftar Isi
1. [Tugas 7](#tugas-1)


## TUGAS 7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Dalam Flutter, Stateless Widget adalah widget yang tidak memiliki keadaan yang dapat berubah selama siklus hidupnya. Widget ini hanya dibangun sekali dan tidak akan diperbarui kecuali ada perubahan pada widget induknya. Contohnya termasuk widget seperti `Text`, `Icon`, dan `Container`. Sebaliknya, Stateful Widget adalah widget yang memiliki keadaan internal yang dapat berubah. Widget ini dapat memperbarui tampilannya ketika keadaan berubah, seperti saat interaksi pengguna. Contoh penggunaan Stateful Widget adalah `Checkbox` dan `TextField`.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Dalam proyek saya ini, widget yang digunakan meliputi `Scaffold`, `AppBar`, `Text`, `Row`, `Column`, `Expanded`, `GridView`, `Card`, `Container`, dan `InkWell`. `Scaffold` menyediakan struktur dasar tampilan, `AppBar` berfungsi sebagai bilah judul, `Text` untuk menampilkan teks, `Row` dan `Column` untuk mengatur layout, `Expanded` untuk mengisi ruang yang tersedia, `GridView` untuk menampilkan grid item, `Card` untuk memberikan efek bayangan pada tampilan, `Container` sebagai wadah untuk widget lain, dan `InkWell` memberikan efek sentuhan saat ditekan.


### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan dalam keadaan widget yang perlu direfleksikan dalam tampilan. Ketika `setState()` dipanggil, Flutter akan memanggil kembali metode `build()` untuk memperbarui antarmuka pengguna. Variabel yang terdampak adalah semua variabel yang digunakan dalam widget yang sedang di-build, khususnya yang berada dalam kelas yang memanggil `setState()`, sehingga perubahan pada nilai variabel tersebut akan terlihat pada UI.

### 4. Jelaskan perbedaan antara const dengan final.

Perbedaan antara `const` dan `final` terletak pada cara mereka menyimpan nilai. Variabel yang dideklarasikan dengan `final` hanya dapat diinisialisasi satu kali, tetapi nilainya dapat ditentukan saat runtime. Sementara itu, variabel yang dideklarasikan dengan `const` adalah nilai konstan yang tidak dapat diubah dan harus diinisialisasi saat kompilasi, sehingga akan menjadi lebih efisien dalam penggunaan memori.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.


