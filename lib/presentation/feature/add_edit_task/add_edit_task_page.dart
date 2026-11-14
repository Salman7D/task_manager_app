import 'package:flutter/material.dart';
import 'package:task_manager/core/app_color.dart';
import 'package:task_manager/core/app_string.dart';
import 'package:task_manager/presentation/core/square_icon_button.dart';
import 'package:task_manager/presentation/feature/add_edit_task/widget/field_label.dart';
import 'package:task_manager/presentation/feature/add_edit_task/widget/prioroty_button.dart';
import 'package:task_manager/presentation/feature/add_edit_task/widget/status_tab.dart';
import 'package:task_manager/presentation/feature/add_edit_task/widget/task_text_field.dart';

class AddEditTaskPage extends StatefulWidget {
  const AddEditTaskPage({super.key});

  @override
  State<AddEditTaskPage> createState() => _AddEditTaskPageState();
}

class _AddEditTaskPageState extends State<AddEditTaskPage> {

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text("Add Task"),
      leading: SquareIconButton(icon: Icons.arrow_back, onTap: () {
        Navigator.of(context).pop();
      },
      ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FieldLabel(text: AppString.taskTitle),
              TaskTextField(controller: _titleController,
                  hintText: AppString.taskTitleHint),
        
              FieldLabel(text: AppString.description),
              TaskTextField(controller: _descriptionController,
                hintText: AppString.description,
                maxLines: 4,),
        
              FieldLabel(text: AppString.dueDate),
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: AppColors.border),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(AppString.dueDate),
                    ),
                    IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () {
                        // Implement date picker logic here
                      },
                    ),
                  ],
                ),
              ),
        
              FieldLabel(text: AppString.priority),
              Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: PriorityButton(
                      label: AppString.low,
                      isSelected: false,
                      onTap: () {
                        // Handle low priority selection
                      },
                    ),
                  ),
                  Expanded(
                    child: PriorityButton(
                      label: AppString.medium,
                      isSelected: true,
                      onTap: () {
                        // Handle medium priority selection
                      },
                    ),
                  ),
                  Expanded(
                    child: PriorityButton(
                      label: AppString.high,
                      isSelected: false,
                      onTap: () {
                        // Handle high priority selection
                      },
                    ),
                  ),
                ],
              ),
        
              FieldLabel(text: AppString.status),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.softGrey,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: StatusTab(
                            label: AppString.pending,
                            isSelected: true,
                            onTap: (){}
                        ),
                      ),
                      Expanded(
                        child: StatusTab(
                            label: AppString.status,
                            isSelected: false,
                            onTap: (){}
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              Spacer(),
        
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      minimumSize: Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                          borderRadius: .circular(11)
                      )
                  ),
        
                  child: Text(AppString.saveTask,style:
                  TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white
                  )
                    ,)
              ),
        
              TextButton(
                onPressed: () {
                  // Handle delete task logic here
                },
                child: Center(
                  child: Text(
                    AppString.cancel,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.bodyText,
                    ),
                  ),
                ),
              ),
        
            ],
        
          ),
        ),
      ),
    );
  }
}
