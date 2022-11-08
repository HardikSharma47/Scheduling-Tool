import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scheduling Tool"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).backgroundColor,
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: [
            DrawerHeader(
              child: GestureDetector(
                onTap: () {
                  const snackBar = SnackBar(
                      content: Text(
                    'East or West Hardik is the best!',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Add Data",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/loadData');
              },
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}
