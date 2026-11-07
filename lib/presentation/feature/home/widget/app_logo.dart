import 'package:flutter/material.dart';
import 'package:task_manager/core/app_color.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.check, color: AppColors.background, size: 13,)
      );

  }
}
