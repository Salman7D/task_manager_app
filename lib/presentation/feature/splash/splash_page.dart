import 'package:flutter/material.dart';
import 'package:task_manager/core/app_color.dart';
import 'package:task_manager/core/app_string.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
          child: Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(color: AppColors.primary.withValues(alpha: 0.32))
              ]
            ),
            child: Icon(Icons.check, color: AppColors.background, size: 48,),
          ),
        ),

        SizedBox(height: 16),

        Text(AppString.appName,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),

        Text(AppString.appTagline,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)

      ],),
    );
  }
}
