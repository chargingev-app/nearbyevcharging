import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutterevcharging/components/station_details.dart';

class Google_Map extends StatefulWidget {
  const Google_Map({Key? key}) : super(key: key);

  @override
  _Google_MapState createState() => _Google_MapState();
}

class _Google_MapState extends State<Google_Map> {
  final CameraPosition _initialPosition =
      const CameraPosition(target: LatLng(28.4511, 77.6955), zoom: 13.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Stack(clipBehavior: Clip.hardEdge, fit: StackFit.expand, children: [
      GoogleMap(
          myLocationButtonEnabled: false,
          myLocationEnabled: true,
          scrollGesturesEnabled: true,
          tiltGesturesEnabled: true,
          rotateGesturesEnabled: true,
          compassEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialPosition,
          mapType: MapType.normal,
          onMapCreated: (controller) {
            setState(() {});
          }),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StationDetails();
                      }));
                    },
                    child: Card(
                        child: Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(children: <Widget>[
                        Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/ElectrifyAmerica-VancouverWA.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Stack(clipBehavior: Clip.none, children: [
                              Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Text("4.0",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500)))),
                            ])),
                        const SizedBox(width: 15),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Walmart Greenville AL",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              Text("2.5 km",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: 5),
                              Row(children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/thunder.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                                const SizedBox(width: 10),
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/distance.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                              ]),
                            ]),
                      ]),
                    ))),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StationDetails();
                      }));
                    },
                    child: Card(
                        child: Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(children: <Widget>[
                        Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Untitled-design-2019-03-15T102633.759.png'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Stack(clipBehavior: Clip.none, children: [
                              Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Text("4.0",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500)))),
                            ])),
                        const SizedBox(width: 15),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Walmart Greenville AL",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              Text("2.5 km",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: 5),
                              Row(children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/thunder.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                                const SizedBox(width: 10),
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/distance.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                              ]),
                            ]),
                      ]),
                    ))),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StationDetails();
                      }));
                    },
                    child: Card(
                        child: Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(children: <Widget>[
                        Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/v1sJvSjeO8pbsgAEXucK05IEsMu2DubykI9UahzpddGL0HQW3tg1mo6.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Stack(clipBehavior: Clip.none, children: [
                              Positioned(
                                  bottom: 5,
                                  left: 5,
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Text("4.0",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w500)))),
                            ])),
                        const SizedBox(width: 15),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Walmart Greenville AL",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500)),
                              Text("2.5 km",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(height: 5),
                              Row(children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/thunder.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                                const SizedBox(width: 10),
                                Container(
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(5)),
                                        border: Border.all(
                                            color: Colors.black45, width: 1)),
                                    child: Image.asset(
                                        "assets/icons/distance.png",
                                        color: Colors.black45,
                                        height: 10,
                                        width: 10)),
                              ]),
                            ]),
                      ]),
                    ))),
              ])),
        ),
      ),
    ]));
  }
}
