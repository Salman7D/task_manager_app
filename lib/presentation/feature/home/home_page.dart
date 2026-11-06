import 'package:flutter/material.dart';
import 'package:task_manager/core/app_color.dart';
import 'package:task_manager/core/app_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 12,
            children: [
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.check, color: AppColors.background, size: 13,),
              ),

                Text(AppString.appName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                color: AppColors.primary.withAlpha(32),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.search, color: AppColors.primary),
            ),
          ),
        ],
      ),

      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
            Text(
            AppString.goodMorning,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.secondaryText,
            ),
          ),
          Text(
            'Farshy',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),

              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: .circular(24),
                  boxShadow: [BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: 8,
                    offset: Offset.zero
                    
                  )]
                ),

                margin: EdgeInsets.symmetric(vertical: 16),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 16,
                  top: 8,
                  bottom: 8
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.task, color: AppColors.primary,),
                    Text("10",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primaryText
                      ),
                    ),

                    Text(AppString.total,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryText

                      ),

                    )
                  ],
                ),
              ),
              )

      ]
      )
    )
    );
  }
}
