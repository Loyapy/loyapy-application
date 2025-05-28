import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/shared/screen_scale/screen_scale.dart';
import '../../home/data/models/product_model.dart';
import '../bloc/details_bloc.dart';
import '../bloc/details_event.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSection extends StatefulWidget {
  final ProductModel product;
  final String selectedImage;

  const ImageSection({
    super.key,
    required this.product,
    required this.selectedImage,
  });

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  final TransformationController _controller = TransformationController();
  bool _isZoomed = false;

  late bool isMobile;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isMobile = ScreenScale.getDeviceType(context) == MDeviceType.mobile;
  }

  @override
  void didUpdateWidget(covariant ImageSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selectedImage != oldWidget.selectedImage) {
      _resetZoom();
    }
  }

  void _resetZoom() {
    _controller.value = Matrix4.identity();
    _isZoomed = false;
  }

  void _toggleZoom() {
    setState(() {
      if (_isZoomed) {
        _controller.value = Matrix4.identity();
      } else {
        _controller.value = Matrix4.identity()..scale(2.0);
      }
      _isZoomed = !_isZoomed;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.product.images.isEmpty) return const SizedBox();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: MouseRegion(
            onEnter: (_) {
              if (!isMobile && !_isZoomed) {
                _controller.value = Matrix4.identity()..scale(2.0);
                _isZoomed = true;
              }
            },
            onExit: (_) {
              if (!isMobile) {
                _resetZoom();
              }
            },
            child: GestureDetector(
              onDoubleTap: isMobile ? _toggleZoom : null,
              child: InteractiveViewer(
                transformationController: _controller,
                panEnabled: true,
                scaleEnabled: true,
                minScale: 1.0,
                maxScale: 3.0,
                child: Image.asset(
                  widget.selectedImage,
                  width: isMobile?300:500,
                  height: isMobile?300:400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 50.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: widget.product.images.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final img = widget.product.images[index];
              return GestureDetector(
                onTap: () {
                  _resetZoom();
                  context.read<DetailsBloc>().add(ChangeProductImage(img));
                },
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: img == widget.selectedImage
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
