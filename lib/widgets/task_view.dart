import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../services/database_helper.dart';
import '../modals/task_modal.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async {
        List<Task>? first = await DatabaseHelper.getAllTask();

        first?.forEach((element) {
          print(element);
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      tileColor: primaryColor,
      leading: const Icon(
        Icons.check_box,
        color: buttonColor,
      ),
      title: const Text(
        "World View",
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
          decoration: TextDecoration.lineThrough,
        ),
      ),
      trailing: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: IconButton(
          icon: Icon(Icons.delete),
          iconSize: 18,
          color: primaryColor,
          onPressed: () {
            print("Hellow From the delete");
          },
        ),
      ),
    );
  }
}
