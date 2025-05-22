import 'package:flutter/material.dart';

import '../home.dart';

class HomeListItem extends StatelessWidget {
  final List<ProductModel> products;
  final String title;

  const HomeListItem({super.key, required this.products, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 290.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final item = products[index];
              return ProductItemCard(
                imageUrl: item.images.first,
                title: item.title,
                ratings: item.rating,
                description: item.description,
                shortDescription: item.shortDescription,
                features: item.features,
                price: item.price,
                originalPrice: item.originalPrice,
              );
            },
          ),
        ),
      ],
    );
  }
}
