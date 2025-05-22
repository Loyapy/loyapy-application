import 'package:flutter_bloc/flutter_bloc.dart';

import '../home.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(const HomeState()) {
    on<LoadHomeData>(_onLoadHomeData);
    on<LoadBannerData>(_onLoadBannerData);
    on<LoadCategoryData>(_onLoadCategoryData);
  }

  Future<void> _onLoadHomeData(
    LoadHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final deals = await repository.fetchBestDeals();
      emit(state.copyWith(isLoading: false, bestDeals: deals));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onLoadBannerData(
    LoadBannerData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final banners = await repository.fetchBanners();
      emit(state.copyWith(isLoading: false, banners: banners));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> _onLoadCategoryData(
    LoadCategoryData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final categories = await repository.fetchCategories();
      emit(state.copyWith(isLoading: false, categories: categories));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }
}
