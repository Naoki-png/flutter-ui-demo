import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/list_page.dart';
import 'paging_page.dart';
import 'tab_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      body: _buildBody(selectedTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
            ),
            label: 'list',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
            ),
            label: 'pages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tab,
            ),
            label: 'tab',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt_sharp,
            ),
            label: 'slivers',
          ),
        ],
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        onTap: _onSelectTab,
        currentIndex: selectedTabIndex,
      ),
    );
  }

  void _onSelectTab(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  Widget? _buildBody(int index) {
    switch (index) {
      case 0:
        return ListPage();
      case 1:
        return PagingPage();
      case 2:
        return TabPage();
    }
  }
}
