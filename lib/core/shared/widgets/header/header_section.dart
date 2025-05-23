import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyapy/core/core.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.primaryColor,
      ),

      child: Column(
        children: [
          // Top row: Logo + Location + Actions
          Row(
            children: [
              SizedBox(width: 20.w),
              // Logo + App name
              Expanded(
                child: Row(
                  children: [
                    ScreenScale.getDeviceType(context) == MDeviceType.mobile
                        ? Flexible(
                            child: Image.asset(
                              PNGAssets.logoWithoutBg,
                              height: 30.h,
                              color: Colors.black,
                            ),
                          )
                        : Flexible(
                            child: Image.asset(
                              PNGAssets.logoWithoutBg,
                              width: 10.w,
                              color: Colors.black,
                            ),
                          ),
                    // SizedBox(width: ScreenScale.i.pw(0.01)),
                    Flexible(
                      child: Text(
                        maxLines: 1,
                        'Loyapy',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 1.w,
              ),

              // Location
              if(ScreenScale.getDeviceType(context)!=MDeviceType.mobile)
              Expanded(
                child: InkWell(
                  onTap: () {
                    openWhatsApp('from Loyapy');
                  },
                  child: Row(
                    children: [
                      Flexible(
                        child: Icon(Icons.location_on,
                            size: 20, color: AppColors.defaultBlackColor),
                      ),
                      SizedBox(width: 4.w),
                      Flexible(
                        child: Text(
                          maxLines: 1,
                          'Mirpur, Dhaka, Bangladesh',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              if(ScreenScale.getDeviceType(context)!=MDeviceType.mobile)
              // Search Box
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
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
              ),
              SizedBox(
                width: 1.w,
              ),
              // Icons: Language, Login, Wishlist, Cart
              if(ScreenScale.getDeviceType(context)!=MDeviceType.mobile)
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.language),
              ),
              SizedBox(
                width: 1.w,
              ),
              if(ScreenScale.getDeviceType(context)!=MDeviceType.mobile)
              Expanded(
                child: InkWell(
                  onTap: () {
                    openWhatsApp('from Loyapy');
                  },
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          maxLines: 1,
                          'Login',
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Flexible(
                        child: IconButton(
                          onPressed: () {
                            openWhatsApp('from Loyapy');
                          },
                          icon: Icon(Icons.person),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 1.w,
              ),
              IconButton(
                onPressed: () {
                  openWhatsApp('from Loyapy');
                },
                icon: const Icon(Icons.favorite_border),
              ),
              SizedBox(
                width: 1.w,
              ),
              IconButton(
                onPressed: () {
                  openWhatsApp('from Loyapy');
                },
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ],
      ),
    );
  }
}
