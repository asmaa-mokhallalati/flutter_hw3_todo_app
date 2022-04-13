import 'package:flutter/material.dart';
import 'package:flutter_hw3_todo_app/data/tasks_data.dart';
import 'package:flutter_hw3_todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function delFun;
  AllTasksScreen(this.fun,this.delFun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index],fun,delFun);
        });
  }
}
