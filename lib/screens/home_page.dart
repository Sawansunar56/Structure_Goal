import 'package:flutter/material.dart';
import 'stack_view.dart';
import 'queue_view.dart';
import 'package:structure_goal/constants/color.dart';
import '../modals/task_modal.dart';
import '../services/database_helper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedItemIndex = 0;

  static const List<Widget> _pages = <Widget>[
    QueueView(),
    StackView(),
    Icon(Icons.search, size: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Structured Goal",
          style: TextStyle(
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: _pages.elementAt(selectedItemIndex),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: NavigationBar(
          backgroundColor: primaryColor,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.swap_horiz, size: 30.0, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.stacked_bar_chart,
                size: 30,
                color: Colors.white,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.check_box, size: 30, color: Colors.white),
              label: '',
            ),
          ],
          selectedIndex: selectedItemIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedItemIndex = index;
            });
          },
          animationDuration: const Duration(milliseconds: 500),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () async {
            const Task firstShit = Task(
                id: 1,
                content: "contenHet",
                stackOrder: 1,
                queueOrder: 2,
                priorityOrder: 4,
                createdAt: "createdAsdft");

            await DatabaseHelper.addTask(firstShit);
          },
          backgroundColor: buttonColor,
          child: const Icon(
            Icons.add,
            size: 35,
            color: primaryColor,
          ),
        ),
      ),
    );
    ;
  }
}
