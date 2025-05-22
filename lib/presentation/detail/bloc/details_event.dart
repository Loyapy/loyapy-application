import '../../home/home.dart';

abstract class DetailsEvent {}

class LoadProductDetails extends DetailsEvent {
  final ProductModel product;

  LoadProductDetails(this.product);
}
