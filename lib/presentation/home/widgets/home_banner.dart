import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:loyapy/presentation/home/home.dart';

class HomeBanner extends StatelessWidget {
  final List<String> bannerImages;

  const HomeBanner({super.key, required this.bannerImages});

  @override
  Widget build(BuildContext context) {
    if (bannerImages.isEmpty) return const SizedBox();

    return CarouselSlider(
      options: CarouselOptions(
        height: 260.h,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 16 / 9,
      ),
      items: bannerImages.map((imagePath) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            imagePath,
            width: double.infinity,
          ),
        );
      }).toList(),
    );
  }
}
