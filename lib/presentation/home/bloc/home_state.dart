import '../home.dart';

class HomeState extends Equatable {
  final List<ProductModel> bestDeals;
  final List<CategoryModel> categories;
  final List<String> banners;
  final bool isLoading;
  final String? error;

  const HomeState({
    this.bestDeals = const [],
    this.categories = const [],
    this.banners = const [],
    this.isLoading = false,
    this.error,
  });

  HomeState copyWith({
    List<ProductModel>? bestDeals,
    List<String>? banners,
    List<CategoryModel>? categories,
    bool? isLoading,
    String? error,
  }) {
    return HomeState(
      banners: banners ?? this.banners,
      categories: categories ?? this.categories,
      bestDeals: bestDeals ?? this.bestDeals,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  List<Object?> get props => [banners, categories, bestDeals, isLoading, error];
}
