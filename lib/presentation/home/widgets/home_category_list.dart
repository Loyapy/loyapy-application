import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../home.dart';

class HomeCategoryList extends StatelessWidget {
  final List<CategoryModel> categories;

  const HomeCategoryList({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      width: MediaQuery.of(context).size.width,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          itemCount: categories.length,
          separatorBuilder: (_, __) => SizedBox(width: 10.w),
          itemBuilder: (context, index) {
            final category = categories[index];
            return InkWell(
              onTap: () {
                openWhatsApp('from Loyapy');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.grey.shade200,
                    child: Image.asset(
                      category.iconPath,
                      height: 45,
                      width: 45,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    category.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
