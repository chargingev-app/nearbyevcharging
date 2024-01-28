import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/components/filter_page.dart';
import 'package:flutterevcharging/components/google_map.dart';
import 'package:flutterevcharging/components/notification.dart';
import 'package:flutterevcharging/components/scanqr_page.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(isDrawerOpen ? 0.84 : 1.00)
          ..rotateZ(isDrawerOpen ? 0 : 0),
        duration: const Duration(
          milliseconds: 200,
        ),
        decoration: BoxDecoration(
          borderRadius: isDrawerOpen
              ? BorderRadius.circular(30)
              : BorderRadius.circular(0),
        ),
        child: Stack(children: <Widget>[
          const Google_Map(),
          SingleChildScrollView(
              child: Column(children: <Widget>[
            SizedBox(
                child: Stack(children: <Widget>[
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Colors.black12)
                        ]),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Search Location',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon:
                          const Icon(Icons.location_on_outlined, size: 20),
                    )),
                  )),
            ])),
          ])),
        ]));
  }
}
