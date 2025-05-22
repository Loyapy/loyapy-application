import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyapy/core/constants/app_colors.dart';

class ProductItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final dynamic ratings;
  final dynamic description;
  final dynamic shortDescription;
  final dynamic features;
  final double price;
  final double originalPrice;

  const ProductItemCard({
    super.key,
    required this.imageUrl,
    required this.description,
    required this.ratings,
    required this.shortDescription,
    required this.features,
    required this.title,
    required this.price,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      margin: EdgeInsets.only(right: 12.h),
      padding: EdgeInsets.only(left: 6.h, top: 6.h, right: 6.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  imageUrl,
                  height: 150.h,
                  width: double.maxFinite,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 6.h,
                right: 2.h,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.defaultWhiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 6.h,
                right: 2.h,
                child: Icon(
                  Icons.add_shopping_cart_outlined,
                ),
              ),
              Positioned(
                bottom: 6.h,
                left: 2.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 2.h),
                    Text(
                      '$ratings',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Text(
                '৳${price.toStringAsFixed(0)}',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(width: 6.w),
              Text('৳${originalPrice.toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(Icons.local_shipping, color: Colors.green),
              SizedBox(width: 4.w),
              Text(
                'Free Delivery',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
