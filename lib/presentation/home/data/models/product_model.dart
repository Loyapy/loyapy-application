class ProductModel {
  final List<String> images;
  final String title;
  final double price;
  final double originalPrice;
  final double rating;
  final dynamic features;
  final dynamic shortDescription;
  final dynamic description;

  ProductModel({
    required this.images,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.rating,
    required this.features,
    required this.shortDescription,
    required this.description,
  });
}
