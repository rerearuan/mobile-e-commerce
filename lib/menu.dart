import 'package:flutter/material.dart';

class ProductHomepage {
  final String name;
  final IconData icon;

  ProductHomepage(this.name, this.icon);
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final String npm = '2306275632';
  final String name = 'Regina Meilani Aruan';
  final String className = 'PBP E';

  final List<ProductHomepage> items = [
    ProductHomepage("Lihat Daftar Produk", Icons.shopping_bag),
    ProductHomepage("Tambah Produk", Icons.add_circle),
    ProductHomepage("Logout", Icons.exit_to_app),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BambooShop',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to BambooShop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(20),
                children: items.map((item) {
                  return ProductCard(item);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: Colors.green[50],
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final ProductHomepage product;

  const ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    Color? cardColor;
    String snackbarMessage;

    switch (product.name) {
      case "Lihat Daftar Produk":
        cardColor = Colors.blue[600];
        snackbarMessage = "Kamu telah menekan tombol Lihat Daftar Produk";
        break;
      case "Tambah Produk":
        cardColor = const Color.fromARGB(255, 215, 153, 77);
        snackbarMessage = "Kamu telah menekan tombol Tambah Produk";
        break;
      case "Logout":
        cardColor = const Color.fromARGB(255, 167, 41, 39);
        snackbarMessage = "Kamu telah menekan tombol Logout";
        break;
      default:
        cardColor = const Color.fromARGB(255, 46, 134, 50);
        snackbarMessage = "Kamu telah menekan tombol ${product.name}";
    }

    return Material(
      color: cardColor,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(snackbarMessage)),
            );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  product.icon,
                  color: Colors.green[100],
                  size: 36.0,
                ),
                const SizedBox(height: 4),
                Text(
                  product.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green[50],
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
