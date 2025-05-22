import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestDealItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final double originalPrice;

  const BestDealItemCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.all(8.w),
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
                child: Image.network(
                  imageUrl,
                  height: 100.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 6.h,
                right: 6.w,
                child: Icon(Icons.favorite_border, color: Colors.red),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, size: 14.sp, color: Colors.orange),
                  SizedBox(width: 2.w),
                  Text('4.5', style: TextStyle(fontSize: 12.sp)),
                ],
              ),
              Icon(Icons.shopping_cart_outlined, size: 18.sp),
            ],
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Text(
                '৳${price.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 6.w),
              Text(
                '৳${originalPrice.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(Icons.local_shipping, size: 14.sp, color: Colors.green),
              SizedBox(width: 4.w),
              Text(
                'Free Delivery',
                style: TextStyle(fontSize: 12.sp, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
