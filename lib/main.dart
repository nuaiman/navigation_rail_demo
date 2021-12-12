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
      home: const HomePage(),
      theme: ThemeData.dark(),
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
            minWidth: 60,
            trailing: const Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: CircleAvatar(),
            ),
            labelType: NavigationRailLabelType.all,
            selectedLabelTextStyle:
                const TextStyle(decoration: TextDecoration.underline),
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const [
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 1'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 2'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 3'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 4'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 5'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 6'),
                  ),
                  icon: Icon(null)),
              NavigationRailDestination(
                  label: RotatedBox(
                    quarterTurns: 3,
                    child: Text('Page 7'),
                  ),
                  icon: Icon(null)),
            ],
          ),
          Text(
            'Selected Index: ${_selectedIndex + 1}',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
