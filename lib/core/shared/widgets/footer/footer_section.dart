import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loyapy/core/constants/app_contents.dart';
import 'package:loyapy/core/core.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    void mLaunchUrl(String url) async {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $url';
      }
    }

    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      "We're Always Here To Help",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      maxLines: 2,
                      'Reach out to us through any of these support channels',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.defaultWhiteColor,
                              child: Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  maxLines: 1,
                                  'Help Center'.toUpperCase(),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  maxLines: 5,
                                  AppContents.companyPhone,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Flexible(
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColors.defaultWhiteColor,
                              child: Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  maxLines: 1,
                                  'Email Support'.toUpperCase(),
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  maxLines: 5,
                                  AppContents.companyEmail,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 4.h),
          Divider(),

          SizedBox(height: 8.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    'Shop On The Go'.toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 2.w),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.playStoreLink,
                        ),
                        child: Image.asset(
                          PNGAssets.playStore,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.appStoreLink,
                        ),
                        child: Image.asset(
                          PNGAssets.appStore,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    'Connect With Us'.toUpperCase(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 2.w),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.facebookLink,
                        ),
                        child: CircleAvatar(
                          radius: ScreenScale.getDeviceType(context) ==
                                  MDeviceType.mobile
                              ? 7.w
                              : 4.w,
                          backgroundColor: AppColors.defaultWhiteColor,
                          child: Image.asset(
                            PNGAssets.facebook,
                            color: Colors.black,
                            height:  ScreenScale.getDeviceType(context) ==
                                MDeviceType.mobile
                                ? 22.h
                                : 16.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.instagramLink,
                        ),
                        child: CircleAvatar(
                          radius: ScreenScale.getDeviceType(context) ==
                                  MDeviceType.mobile
                              ? 7.w
                              : 4.w,
                          backgroundColor: AppColors.defaultWhiteColor,
                          child: Image.asset(
                            PNGAssets.instagram,
                            color: Colors.black,
                            height:  ScreenScale.getDeviceType(context) ==
                                MDeviceType.mobile
                                ? 22.h
                                : 16.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.twitterLink,
                        ),
                        child: CircleAvatar(
                          radius: ScreenScale.getDeviceType(context) ==
                                  MDeviceType.mobile
                              ? 7.w
                              : 4.w,
                          backgroundColor: AppColors.defaultWhiteColor,
                          child: Image.asset(
                            PNGAssets.x,
                            color: Colors.black,
                            height:  ScreenScale.getDeviceType(context) ==
                                MDeviceType.mobile
                                ? 22.h
                                : 16.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.tiktokLink,
                        ),
                        child: CircleAvatar(
                          radius: ScreenScale.getDeviceType(context) ==
                                  MDeviceType.mobile
                              ? 7.w
                              : 4.w,
                          backgroundColor: AppColors.defaultWhiteColor,
                          child: Image.asset(
                            PNGAssets.tiktok,
                            color: Colors.black,
                            height:  ScreenScale.getDeviceType(context) ==
                                MDeviceType.mobile
                                ? 22.h
                                : 16.h,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      InkWell(
                        onTap: () => mLaunchUrl(
                          AppContents.linkedInLink,
                        ),
                        child: CircleAvatar(
                          radius: ScreenScale.getDeviceType(context) ==
                                  MDeviceType.mobile
                              ? 7.w
                              : 4.w,
                          backgroundColor: AppColors.defaultWhiteColor,
                          child: Image.asset(
                            PNGAssets.linkedin,
                            height:  ScreenScale.getDeviceType(context) ==
                                MDeviceType.mobile
                                ? 22.h
                                : 16.h,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 12.h),
          // Bottom Text
          Text('© 2025 Loyapy. All Rights Reserved',
              style: Theme.of(context).textTheme.bodySmall)
        ],
      ),
    );
  }
}
