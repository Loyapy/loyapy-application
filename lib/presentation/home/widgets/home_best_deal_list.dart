import 'package:flutter/material.dart';

import '../home.dart';

class HomeBestDealList extends StatelessWidget {
  final List<ProductModel> products;

  const HomeBestDealList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Best Deals',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 300.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final item = products[index];
              return BestDealItemCard(
                imageUrl: item.image,
                title: item.title,
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
