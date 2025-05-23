import 'package:flutter_bloc/flutter_bloc.dart';
import 'details_event.dart';
import 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc() : super(DetailsInitial()) {
    on<LoadProductDetails>((event, emit) {
      emit(DetailsLoaded(event.product, event.product.images.first));
    });
    on<ChangeProductImage>((event, emit) {
      if (state is DetailsLoaded) {
        final loaded = state as DetailsLoaded;
        emit(DetailsLoaded(loaded.product, event.newImage));
      }
    });
  }
}
