import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:loyapy/presentation/detail/detail.dart';
import '../../../core/core.dart';
import '../../home/data/models/product_model.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DetailsBloc>().add(LoadProductDetails(product));
    });
    return Scaffold(
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          if (state is! DetailsLoaded) {
            return const Center(child: CircularProgressIndicator());
          }

          final product = state.product;
          final selectedImage = state.selectedImage;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HeaderSection(),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Expanded(
                        child: ImageSection(
                          product: product,
                          selectedImage: selectedImage,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(height: 10.h),
                            FeatureSection(features: product.features),
                            SizedBox(height: 10.h),
                            BuyNowButton(productTitle: product.title),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.w),
                  Html(data: product.shortDescription),
                  SizedBox(height: 8.w),
                  Html(data: product.description),
                  SizedBox(height: 8.w),
                  const FooterSection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
