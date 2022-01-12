import 'package:flutter/material.dart';
import 'dart:core';
import 'package:paix_app/screens/topics_screens.dart/todosmaterial/todo.dart';
import 'package:paix_app/screens/topics_screens.dart/todosmaterial/todo_item.dart';

class ImprovePerformanceScreen extends StatefulWidget {
  @override
  _ImprovePerformanceScreenState createState() =>
      _ImprovePerformanceScreenState();
}

class _ImprovePerformanceScreenState extends State<ImprovePerformanceScreen> {
  final TextEditingController _textFieldController = TextEditingController();
  final List<Todo> _todos = <Todo>[];

  Future<void> _displayDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a new todo item'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Type your new todo'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textFieldController.text);
              },
            ),
          ],
        );
      },
    );
  }

  void _addTodoItem(String name) {
    setState(() {
      _todos.add(Todo(name: name, checked: false));
    });
    _textFieldController.clear();
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.checked = !todo.checked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9a8c98),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF4a4e69),
        title: Center(child: Text('Improve Performance')),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: _todos.map((Todo todo) {
          return TodoItem(
            todo: todo,
            onTodoChanged: _handleTodoChange,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          onPressed: () => _displayDialog(),
          tooltip: 'Add Item',
          child: Icon(
            Icons.add,
            color: Colors.black,
          )),
    );
  }
}
