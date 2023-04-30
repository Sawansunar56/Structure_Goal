import 'package:flutter/material.dart';
import 'package:structure_goal/modals/task_modal.dart';
import 'package:structure_goal/services/database_helper.dart';
import 'package:structure_goal/widgets/task_view.dart';

class QueueView extends StatefulWidget {
  const QueueView({super.key});

  @override
  State<QueueView> createState() => _QueueViewState();
}

class _QueueViewState extends State<QueueView> {
  List<Task>? task;
  @override
  void initState() {
    super.initState();
    getAsync();
  }

  void getAsync() async {
    task = await DatabaseHelper.getAllTask();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21.0, horizontal: 12.0),
      child: FutureBuilder<Task>(builder: ,)
      
    );
    
  }
}
