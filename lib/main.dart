import 'package:flutter/material.dart';
import 'package:flutter_hw3_todo_app/data/tasks_data.dart';
import 'package:flutter_hw3_todo_app/models/task_model.dart';
import 'package:flutter_hw3_todo_app/pages/all_tasks.dart';
import 'package:flutter_hw3_todo_app/pages/complete_tasks.dart';
import 'package:flutter_hw3_todo_app/pages/incomplete_tasks.dart';

void main() {
  runApp(MaterialApp(
      home: TodoHomePage()));
}
class TodoHomePage extends StatefulWidget {
  @override
  State<TodoHomePage> createState() => MyApp();
}

class MyApp extends State<TodoHomePage>{
  changeTaskCompleteness(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].isCompleted = !tasksList[index].isCompleted;
    setState(() {});
  }
  deleteTask(Task task) {
    int index = tasksList.indexOf(task);
    tasksList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO APP'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list),
                text: 'All Tasks',
              ),
              Tab(
                icon: Icon(Icons.done),
                text: 'Complete Tasks',
              ),
              Tab(
                icon: Icon(Icons.cancel),
                text: 'InComplete Tasks',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              AllTasksScreen(changeTaskCompleteness,deleteTask),
              CompleteTasksScreen(changeTaskCompleteness,deleteTask),
              InCompleteTasksScreen(changeTaskCompleteness,deleteTask)
            ],
          ),
        ));
  }
}
