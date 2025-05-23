import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/core.dart';

class ProductItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final dynamic ratings;
  final dynamic description;
  final dynamic shortDescription;
  final dynamic features;
  final double price;
  final double itemWidth;
  final double originalPrice;

  const ProductItemCard({
    super.key,
    required this.itemWidth,
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
      width: itemWidth,
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
                child: InkWell(
                  onTap: (){
                    openWhatsApp('from Loyapy');
                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.defaultWhiteColor,
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.blueGrey,
                      size: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 6.h,
                right: 2.h,
                child: InkWell(
                  onTap: (){
                    openWhatsApp('from Loyapy');
                  },
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.defaultWhiteColor,
                    ),
                    child: Icon(
                      Icons.add_shopping_cart_outlined,size: 16,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 6.h,
                left: 2.h,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.defaultWhiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 2.h),
                      Text(
                        '$ratings',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      Icon(Icons.star, color: AppColors.defaultGreenColor,size: 16,),
                    ],
                  ),
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
              Flexible(
                child: Text(
                  maxLines: 1,
                  '৳${price.toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(width: 6.w),
              Flexible(
                child: Text(
                  maxLines: 1,
                  '৳${originalPrice.toStringAsFixed(0)}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Flexible(
                child: Icon(Icons.local_shipping, color: Colors.green),
              ),
              SizedBox(width: 1.w),
              Flexible(
                child: Text(
                  maxLines: 2,
                  'Free Delivery',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
