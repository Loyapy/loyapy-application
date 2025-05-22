import '../../home.dart';

abstract class HomeRepository {
  Future<List<ProductModel>> fetchBestDeals();
  Future<List<String>> fetchBanners();
  Future<List<CategoryModel>> fetchCategories();
}
