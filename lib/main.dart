import 'package:flutter/material.dart';
import './screens/stack_view.dart';
import './screens/queue_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter game',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
        backgroundColor: const Color(0xff1F1B24),
      ),
      body: _pages.elementAt(selectedItemIndex),
      // Container(
      //   decoration: const BoxDecoration(
      //     color: Color(0xff292929),
      //   ),
      // ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: NavigationBar(
          backgroundColor: const Color(0xff1F1B24),
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
          onPressed: () {},
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add, size: 35),
        ),
      ),
    );
    ;
  }
}
