import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/filter_page.dart';
import 'package:nearbyevcharging/components/google_map.dart';
import 'package:nearbyevcharging/components/notification.dart';
import 'package:nearbyevcharging/components/scanqr_page.dart';

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
                height: MediaQuery.of(context).size.height * 0.17,
                child: Stack(children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height * 0.17 - 20,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0))),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            isDrawerOpen
                                ? GestureDetector(
                                    child: const Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onTap: () {
                                      setState(() {
                                        xOffset = 0;
                                        yOffset = 0;
                                        isDrawerOpen = false;
                                      });
                                    })
                                : GestureDetector(
                                    child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/images (5).jpeg'),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)))),
                                    onTap: () {
                                      setState(() {
                                        xOffset = 205;
                                        yOffset = 93;
                                        isDrawerOpen = true;
                                      });
                                    }),
                            Text('Nearby Charger Point',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            GestureDetector(
                                child: Image.asset("assets/icons/edit.png",
                                    color: Colors.white, height: 20, width: 20),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const Filter();
                                  }));
                                }),
                            GestureDetector(
                                child: Image.asset("assets/icons/qr-code.png",
                                    color: Colors.white, height: 20, width: 20),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const ScanQR();
                                  }));
                                }),
                            GestureDetector(
                                child: Image.asset("assets/icons/bell.png",
                                    color: Colors.white, height: 20, width: 20),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const NotificationPage();
                                  }));
                                }),
                          ])),
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
