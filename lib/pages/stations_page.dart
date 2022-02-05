import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/station_details.dart';

class Stations extends StatefulWidget {
  const Stations({Key? key}) : super(key: key);

  @override
  _StationsState createState() => _StationsState();
}

class _StationsState extends State<Stations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            elevation: 0.0,
            centerTitle: true,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop(true);
                }),
            title: Text("Stations",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("Hello",
                      style: GoogleFonts.poppins(
                          color: Colors.black45,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 5),
                  Text("Clark Mirosalava",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10,
                              color: Colors.black12)
                        ]),
                    child: TextField(
                        decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: const Icon(Icons.search, size: 30),
                    )),
                  ),
                  const SizedBox(height: 30),
                  Text("Nearest Station",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 10),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const StationDetails();
                        }));
                      },
                      child: Card(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/ElectrifyAmerica-VancouverWA.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child:
                                      Stack(clipBehavior: Clip.none, children: [
                                    Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: const BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Text("4.0",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500)))),
                                  ])),
                              const SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Walmart Greenville AL",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black87,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text("2.5 km",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 20),
                                    Row(children: <Widget>[
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/thunder.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
                                      const SizedBox(width: 10),
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/distance.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
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
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Walmart Greenville AL",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        Text("2.5 km",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black54,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(height: 20),
                                        Row(children: <Widget>[
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/thunder.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                          const SizedBox(width: 10),
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/distance.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                        ]),
                                      ]),
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Untitled-design-2019-03-15T102633.759.png'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                                bottom: 5,
                                                left: 5,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                    ),
                                                    child: Text("4.0",
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)))),
                                          ])),
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
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/v1sJvSjeO8pbsgAEXucK05IEsMu2DubykI9UahzpddGL0HQW3tg1mo6.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child:
                                  Stack(clipBehavior: Clip.none, children: [
                                    Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: const BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Text("4.0",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500)))),
                                  ])),
                              const SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Walmart Greenville AL",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black87,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text("2.5 km",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 20),
                                    Row(children: <Widget>[
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/thunder.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
                                      const SizedBox(width: 10),
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/distance.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
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
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Walmart Greenville AL",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        Text("2.5 km",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black54,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(height: 20),
                                        Row(children: <Widget>[
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/thunder.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                          const SizedBox(width: 10),
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/distance.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                        ]),
                                      ]),
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/ElectrifyAmerica-VancouverWA.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                                bottom: 5,
                                                left: 5,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                    const BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10)),
                                                    ),
                                                    child: Text("4.0",
                                                        style:
                                                        GoogleFonts.poppins(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500)))),
                                          ])),
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
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Untitled-design-2019-03-15T102633.759.png'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child:
                                  Stack(clipBehavior: Clip.none, children: [
                                    Positioned(
                                        bottom: 5,
                                        left: 5,
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            decoration: const BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: Text("4.0",
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                    fontWeight:
                                                    FontWeight.w500)))),
                                  ])),
                              const SizedBox(width: 15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Walmart Greenville AL",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black87,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)),
                                    Text("2.5 km",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black54,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 20),
                                    Row(children: <Widget>[
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/thunder.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
                                      const SizedBox(width: 10),
                                      Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              const BorderRadius.all(
                                                  Radius.circular(5)),
                                              border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1)),
                                          child: Image.asset(
                                              "assets/icons/distance.png",
                                              color: Colors.black45,
                                              height: 15,
                                              width: 15)),
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
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          shadowColor: Colors.black,
                          elevation: 10,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Walmart Greenville AL",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black87,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        Text("2.5 km",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black54,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(height: 20),
                                        Row(children: <Widget>[
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/thunder.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                          const SizedBox(width: 10),
                                          Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                                  border: Border.all(
                                                      color: Colors.black45,
                                                      width: 1)),
                                              child: Image.asset(
                                                  "assets/icons/distance.png",
                                                  color: Colors.black45,
                                                  height: 15,
                                                  width: 15)),
                                        ]),
                                      ]),
                                  Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/v1sJvSjeO8pbsgAEXucK05IEsMu2DubykI9UahzpddGL0HQW3tg1mo6.jpg'),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Positioned(
                                                bottom: 5,
                                                left: 5,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: 30,
                                                    width: 30,
                                                    decoration:
                                                    const BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10)),
                                                    ),
                                                    child: Text("4.0",
                                                        style:
                                                        GoogleFonts.poppins(
                                                            color: Colors
                                                                .white,
                                                            fontSize: 10,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500)))),
                                          ])),
                                ]),
                          ))),
                ])));
  }
}
