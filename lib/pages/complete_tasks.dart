import 'package:flutter/material.dart';
import 'package:flutter_hw3_todo_app/data/tasks_data.dart';
import 'package:flutter_hw3_todo_app/widgets/task_widget.dart';
class CompleteTasksScreen extends StatelessWidget {
  Function fun;
  Function delFun;
  CompleteTasksScreen(this.fun,this.delFun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList.where((element) => element.isCompleted).toList()[index],
              fun,delFun);
        });
  }
}
