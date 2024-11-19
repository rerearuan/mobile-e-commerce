import 'package:e_commerce/screens/list_productentry.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/productentry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

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

    final request = context.watch<CookieRequest>();
    return Material(
      color: cardColor,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
         onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(snackbarMessage)),
            );
          if (product.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          }
          else if (product.name == "Lihat Daftar Produk") {
            Navigator.push(
              context,
                MaterialPageRoute( builder: (context) => const ProductListScreen()
                ),
            );
          }  
          else if (product.name == "Logout") {
          final response = await request.logout(
              "http://localhost:8000/auth/logout/");
          String message = response["message"];
          if (context.mounted) {
              if (response['status']) {
                  String uname = response["username"];
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("$message Sampai jumpa, $uname."),
                  ));
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
              } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(message),
                      ),
                  );
              }
          }
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

