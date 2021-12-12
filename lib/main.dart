import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedLabelTextStyle: TextStyle(
              decoration: TextDecoration.underline,
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
              ),
            ),
            labelType: NavigationRailLabelType.all,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: [
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 1'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 2'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 3'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 4'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 5'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 6'),
                ),
              ),
              NavigationRailDestination(
                icon: const Icon(null),
                label: RotatedBox(
                  quarterTurns: 3,
                  child: Text('Page 7'),
                ),
              ),
            ],
          ),
          Text(
            '  Slected Index: ${_selectedIndex + 1}',
            style: TextStyle(fontSize: 35),
          ),
        ],
      ),
    );
  }
}
