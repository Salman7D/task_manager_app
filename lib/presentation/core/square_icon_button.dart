import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/core/app_color.dart';

class SquareIconButton extends StatelessWidget {
  const SquareIconButton({super.key,
    required this.icon,
    this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 36,
        width: 36,

        decoration: BoxDecoration(
          borderRadius: .circular(11),
          color: AppColors.white,
          border: Border.all(color: AppColors.border)
        ),
        child: IconButton(onPressed: onTap, icon: Icon(icon))
      ),
    );
  }
}
