import 'package:loyapy/core/core.dart';

import '../../home.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<ProductModel>> fetchBestDeals() async {
    await Future.delayed(const Duration(seconds: 2)); // simulate API delay
    return List.generate(
      10,
      (index) => ProductModel(
        image:
            'https://via.placeholder.com/200x150.png?text=Product+${index + 1}',
        title: 'Product ${index + 1}',
        price: 80.0,
        originalPrice: 100.0,
        rating: 4.5,
      ),
    );
  }

  @override
  Future<List<String>> fetchBanners() async {
    await Future.delayed(
        const Duration(milliseconds: 10)); // simulate API delay
    return [
      PNGAssets.banner5,
      PNGAssets.banner5,
      PNGAssets.banner5,
      PNGAssets.banner5,

    ];
  }

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 1)); // simulate delay
    return [
      CategoryModel(
        id: '1',
        title: 'Home & Kitchen',
        iconPath: PNGAssets.homeKitchen,
      ),
      CategoryModel(
        id: '2',
        title: 'Electronics',
        iconPath: PNGAssets.electronics,
      ),
      CategoryModel(
        id: '3',
        title: 'Fashion',
        iconPath: PNGAssets.fashion,
      ),
      CategoryModel(
        id: '4',
        title: 'Baby',
        iconPath: PNGAssets.baby,
      ),
      CategoryModel(
        id: '5',
        title: 'Toys',
        iconPath: PNGAssets.toys,
      ),
      CategoryModel(
        id: '6',
        title: 'Sports',
        iconPath: PNGAssets.sports,
      ),
      CategoryModel(
        id: '7',
        title: 'Stationary',
        iconPath: PNGAssets.stationary,
      ),
    ];
  }
}
