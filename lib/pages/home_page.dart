import 'package:flutter/material.dart';
import 'package:todolist/utils/dialog_box.dart';
import 'package:todolist/utils/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List toDoList = [
    ['Learn Flutter', false],
    ['Walk', true]
  ];

  void checkBoxTapped(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNew() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNew,
            onCancel: () => {Navigator.of(context).pop()},
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text(
          'Todo List',
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            key: UniqueKey(), // Added key here
            taskName: toDoList[index][0],
            isComplete: toDoList[index][1],
            onChanged: (value) => checkBoxTapped(value, index),
          );
        },
      ),
    );
  }
}
