import 'package:flutter/material.dart';
import 'package:structure_goal/widgets/task_view.dart';

class QueueView extends StatelessWidget {
  const QueueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21.0, horizontal: 12.0),
      child: ListView(
        children: const [TaskView()],
      ),
    );
  }
}
