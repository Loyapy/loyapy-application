import '../../home/home.dart';

abstract class DetailsEvent {}

class LoadProductDetails extends DetailsEvent {
  final ProductModel product;

  LoadProductDetails(this.product);
}

class ChangeProductImage extends DetailsEvent {
  final String newImage;

  ChangeProductImage(this.newImage);
}
