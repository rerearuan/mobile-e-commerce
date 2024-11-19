import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:e_commerce/screens/detail_product.dart';
import 'package:e_commerce/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';


ListProductEntry listProductEntryFromJson(String str) =>
    ListProductEntry.fromJson(json.decode(str));


class ListProductEntry {
  List<Product> products;

  ListProductEntry({
    required this.products,
  });

  factory ListProductEntry.fromJson(Map<String, dynamic> json) =>
      ListProductEntry(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );
}

class Product {
  String name;
  double price;
  double rating;
  String description;
  int stock;
  String review;
  String category; 

  Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.stock,
    required this.review,
    required this.category, 
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        price: double.parse(json["price"]),
        rating: json["rating"].toDouble(),
        description: json["description"],
        stock: json["stock"],
        review: json["review"],
        category: json["category"], 
      );
}

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  ProductListScreenState createState() => ProductListScreenState(); 
}

class ProductListScreenState extends State<ProductListScreen> {
  late Future<ListProductEntry> futureListProductEntry;

  @override
  void initState() {
    super.initState();
    futureListProductEntry = fetchProductData();
  }

  Future<ListProductEntry> fetchProductData() async {
    final request = context.read<CookieRequest>();
    final response = await request.get('http://localhost:8000/json2/');

    if (response is Map<String, dynamic>) {
      if (response['status'] == true) {
        return listProductEntryFromJson(json.encode(response));
      } else {
        throw Exception('Failed to load products: ${response['message']}');
      }
    } else {
      throw Exception('Unexpected response format');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.green.shade600,
      ),
      drawer: const LeftDrawer(),
      body: Container(
        color: Colors.white,
        child: FutureBuilder<ListProductEntry>(
          future: futureListProductEntry,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.products.isEmpty) {
              return const Center(child: Text('No products found'));
            }

            ListProductEntry listProductEntry = snapshot.data!;

            return ListView.builder(
              itemCount: listProductEntry.products.length,
              itemBuilder: (context, index) {
                Product product = listProductEntry.products[index];
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Price: \$${product.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green.shade600,
                          ),
                        ),
                        Text(
                          'Rating: ${product.rating}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Stock: ${product.stock}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Category: ${product.category}', // Display category
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Review: ${product.review}', // Display review
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProductDetailScreen(product: product),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green.shade600,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text('Show More'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Product List App',
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    home: const ProductListScreen(),
  ));
}
