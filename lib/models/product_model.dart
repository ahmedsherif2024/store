class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double rating;
  final String descreption;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.descreption,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      imageUrl: json['imageUrl'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      descreption: json['description'],
    );
  }
}
