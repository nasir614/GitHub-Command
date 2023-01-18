import 'package:flutter/material.dart';
import 'package:todolist/models/todoList.dart';

import '../../models/todoList.dart';

class CompletedTasks extends StatelessWidget {
  final TodoListModel todoList;

  // ignore: use_key_in_widget_constructors
  const CompletedTasks({required this.todoList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Completed Items'),
        ),
        body: ListView(
            children: todoList.getCompletedTasks().map((t) {
          return Container(
              height: 50,
              child:
                  Center(child: Text(t.text, style: TextStyle(fontSize: 20))));
        }).toList()));
  }
}
