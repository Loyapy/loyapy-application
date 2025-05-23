import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyapy/core/core.dart';

class BuyNowButton extends StatelessWidget {
  final String productTitle;

  const BuyNowButton({super.key, required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            PNGAssets.whatsapp,
            width: 10.w,
          ),
        ),
        label: Text(
          'Buy Now via WhatsApp',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        onPressed: () {
          openWhatsApp(productTitle);
        },
      ),
    );
  }
}
