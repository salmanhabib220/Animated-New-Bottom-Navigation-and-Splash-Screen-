// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Navigatebottom extends StatefulWidget {
  const Navigatebottom({Key? key}) : super(key: key);

  @override
  _NavigatebottomState createState() => _NavigatebottomState();
}

class _NavigatebottomState extends State<Navigatebottom> {
  int index = 0;
  final screens = [
   Center(child: Text("Today")),
   Center(child: Text("Yesterday")),
   Center(child: Text("Last Week")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Colors.orangeAccent,
          selectedIndex: index,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 2),
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          // ignore: prefer_const_literals_to_create_immutables
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.today_outlined),
              selectedIcon: Icon(Icons.today),
              label: 'Today',
            ),
            NavigationDestination(
              icon: Icon(Icons.today_rounded),
              selectedIcon: Icon(Icons.today_sharp),
              label: 'Yesterday',
            ),
            NavigationDestination(
              icon: Icon(Icons.weekend_outlined),
              selectedIcon: Icon(Icons.weekend),
              label: 'Last Week',
            ),
          ],
        ),
      ),
    );
  }
}
