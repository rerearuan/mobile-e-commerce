import 'package:flutter/material.dart';
import 'package:e_commerce/screens/productentry_form.dart';

class ProductHomepage {
  final String name;
  final IconData icon;

  ProductHomepage(this.name, this.icon);
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

          // Navigasi ketika tombol "Tambah Produk" ditekan
          if (product.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          }
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

