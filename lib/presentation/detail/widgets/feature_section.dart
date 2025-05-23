import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureSection extends StatelessWidget {
  final List<Map<String, String>> features;

  const FeatureSection({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: features.map((feature) {
        final key = feature['key'] ?? '';
        final value = feature['value'] ?? '';
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.check_box_outlined,
                color: Colors.green,
              ),
              SizedBox(width: 2.w),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                          text: "$key: ",
                          style: Theme.of(context).textTheme.titleSmall),
                      TextSpan(text: value, style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
