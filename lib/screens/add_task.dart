import 'package:flutter/material.dart';
import 'package:structure_goal/constants/color.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final taskName = TextEditingController();
  @override
  void dispose() {
    taskName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Page"),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 12.0),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            decoration: InputDecoration(
                labelText: "input",
                floatingLabelStyle: TextStyle(color: Colors.purple),
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white60, width: 2.0),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: taskName.clear,
                )),
            controller: taskName,
            style: TextStyle(color: Colors.white),
          ),
          ElevatedButton(
            onPressed: () => {print(taskName.text)},
            child: Text("Add Task"),
          )
        ]),
      ),
    );
    ;
  }
}
