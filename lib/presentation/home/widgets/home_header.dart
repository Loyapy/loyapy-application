import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyapy/core/core.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      child: Column(
        children: [
          // Top row: Logo + Location + Actions
          Row(
            children: [
              SizedBox(width: ScreenScale.i.pw(15)),
              // Logo + App name
              Row(
                children: [
                  Image.asset(
                    PNGAssets.logoWithoutBg,
                    height: ScreenScale.i.pw(3),
                  ),
                  // SizedBox(width: ScreenScale.i.pw(0.01)),
                  Text(
                    'Loyapy',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.h,
              ),

              // Location
              Row(
                children: [
                  Icon(Icons.location_on,
                      size: 20, color: AppColors.defaultBlackColor),
                  const SizedBox(width: 4),
                  Text(
                    'Mirpur, Dhaka, Bangladesh',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              SizedBox(
                width: 20.h,
              ),

              // Search Box
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What are you looking for?',
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.defaultBlackColor,
                    ),
                    fillColor: AppColors.defaultWhiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: AppColors.defaultWhiteColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: AppColors.defaultWhiteColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: AppColors.defaultWhiteColor),
                    ),
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
              SizedBox(
                width: 10.h,
              ),
              // Icons: Language, Login, Wishlist, Cart
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.language),
              ),
              SizedBox(
                width: 12.h,
              ),
              Row(
                children: [
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person),
                  ),
                ],
              ),
              SizedBox(
                width: 12.h,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border),
              ),
              SizedBox(
                width: 12.h,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              SizedBox(width: ScreenScale.i.pw(15)),
            ],
          ),
        ],
      ),
    );
  }
}
