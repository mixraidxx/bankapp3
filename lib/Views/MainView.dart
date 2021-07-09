import 'package:bankapp3/Views/HomeView.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  static const routeName = "/main";
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Homeview(),
    Container(
      color: Colors.red,
    ),
    Container(color: Colors.amber),
    Container(color: Colors.green)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.credit_card), label: "Pagos"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Productos"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Ajustes"),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
