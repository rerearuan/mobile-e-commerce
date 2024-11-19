import 'dart:convert';

ProductEntry productEntryFromJson(String str) => ProductEntry.fromJson(json.decode(str));

String productEntryToJson(ProductEntry data) => json.encode(data.toJson());

class ProductEntry {
    List<Product> products;

    ProductEntry({
        required this.products,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    String name;
    double price;
    double rating;
    String description;
    int stock;
    String category;
    String review;

    Product({
        required this.name,
        required this.price,
        required this.rating,
        required this.description,
        required this.stock,
        required this.category,
        required this.review,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        price: double.parse(json["price"].toString()), 
        rating: json["rating"]?.toDouble(),
        description: json["description"],
        stock: json["stock"],
        category: json["category"],
        review: json["review"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "rating": rating,
        "description": description,
        "stock": stock,
        "category": category,
        "review": review,
    };
}

