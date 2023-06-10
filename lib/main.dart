import 'package:flutter/material.dart';
import 'package:iotproject/screens/control_screen.dart';
import 'package:iotproject/screens/setting_screen.dart';

import 'conponents/item_box.dart';

void main() {
  runApp(const RouteControler());
}

class RouteControler extends StatelessWidget {
  const RouteControler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: "IOT",
      initialRoute: "/",
      // routes: {
      //   '/': (context) => const HomePage(),
      // },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currerntScreen = 0;
  final screens = [
    const HomeContent(),
    const ControlScreen(),
    const SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "App ai electronic controls",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: screens[_currerntScreen],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currerntScreen,
          backgroundColor: Colors.blue,
          onTap: (index) {
            setState(() {
              _currerntScreen = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_input_component_outlined),
              label: "Controls",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            )
          ],
        ));
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        shrinkWrap: true,
        children: [
          ItemBox(
            key: UniqueKey(),
            title: "Home1",
            color: Colors.lightGreen,
            size: 100,
            status: false,
          ),
          ItemBox(
            key: UniqueKey(),
            title: "Home2",
            color: Colors.lightBlue,
            size: 100,
            status: false,
          ),
        ],
      ),
    );
  }
}
