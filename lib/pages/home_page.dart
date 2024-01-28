import 'package:flutter/material.dart';
import 'package:flutterevcharging/components/drawer_page.dart';
import 'package:flutterevcharging/components/map_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // menu icon and avatar
          leading: Builder(
            builder: (BuildContext context) {
              return Container(
                child: GestureDetector(
                  onTap: () => Scaffold.of(context).openDrawer(),
                  child: const SizedBox(
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/images (5).jpeg'),
                      radius: 10,
                    ),
                  ),
                ),
              );
            },
          ),
          title: const Text('EV Charging'),
          backgroundColor: Colors.green,
        ),
        drawer: const DrawerScreen(),
        body: Container(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: Stack(children: [
              MapScreen(),
            ]),
          ),
        ));
  }
}
