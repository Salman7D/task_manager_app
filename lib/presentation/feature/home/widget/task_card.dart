import 'package:flutter/cupertino.dart';
import 'package:task_manager/core/app_color.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: .all(12),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: .circular(18),
            boxShadow: AppColors.cardShadow
          ),

        );
  }
}
