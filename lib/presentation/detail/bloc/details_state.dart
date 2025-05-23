

import '../../home/home.dart';

abstract class DetailsState {}

class DetailsInitial extends DetailsState {}


class DetailsLoaded extends DetailsState {
  final ProductModel product;
  final String selectedImage;

  DetailsLoaded(this.product, this.selectedImage);


}

