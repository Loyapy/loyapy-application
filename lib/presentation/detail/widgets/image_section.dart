import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loyapy/presentation/home/home.dart';

import '../detail.dart';

class ImageSection extends StatelessWidget {
  final ProductModel product;
  final String selectedImage;

  const ImageSection(
      {super.key, required this.product, required this.selectedImage});

  @override
  Widget build(BuildContext context) {
    if (product.images.isEmpty) return const SizedBox();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: InteractiveViewer(
            child: Image.asset(
              selectedImage,
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: product.images.length,
            separatorBuilder: (_, __) => SizedBox(width: 8),
            itemBuilder: (context, index) {
              final img = product.images[index];
              return GestureDetector(
                onTap: () =>
                    context.read<DetailsBloc>().add(ChangeProductImage(img)),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: img == selectedImage
                          ? Colors.blue
                          : Colors.grey.shade300,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    img,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
