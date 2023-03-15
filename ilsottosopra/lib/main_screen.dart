import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ilsottosopra/angelo_page.dart';
import 'package:ilsottosopra/home_page.dart';

import 'setting_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex=0;
  List<Widget> screens=[
    const HomePage(),
    const SettingPage(),
    const AngeloPage(),
  ];
  void changeIndex(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color:Colors.black),
        backgroundColor: Colors.white,
        title: Center(child: Image.asset("lib/assets/logo.png",width: 200,)),
        actions: const [SizedBox(width: 50,)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        currentIndex: selectedIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: "Settings"),
          const BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "Angelo"),
        ],
      ),
      body: screens.elementAt(selectedIndex),
    );
  }
}