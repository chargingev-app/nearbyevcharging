import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool pressAttention = true;
  bool pressAttention1 = true;
  bool pressAttention2 = true;
  bool pressAttention3 = true;
  bool pressAttention4 = true;
  bool pressAttention5 = true;
  bool pressAttention6 = true;
  bool pressAttention7 = true;
  bool _passwordVisible = true;
  bool pressAttention8 = true;
  bool _passwordVisible1 = true;
  bool pressAttention9 = true;
  bool _passwordVisible2 = true;
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
            title: Text("Filter",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Connectors',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Text('My Connectors',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(height: 10),
                    Text('No vehicles are added to your profile',
                        style: GoogleFonts.poppins(
                            color: Colors.black45,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Text('Other Connectors',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(height: 10),
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention = !pressAttention;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/ACType-1.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("AC Type-1",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention1 = !pressAttention1;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention1
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/CCS-1.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("CCS-1",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention2 = !pressAttention2;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention2
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/ACType-2.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("AC Type-2",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention3 = !pressAttention3;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention3
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/CCS-2.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("CCS-2",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                            ])),
                    Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention4 = !pressAttention4;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention4
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/Tesla.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("Tesla",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention5 = !pressAttention5;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention5
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/CHAdeMO.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("CHAdeMO",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      pressAttention6 = !pressAttention6;
                                    });
                                  },
                                  child: Column(children: <Widget>[
                                    Container(
                                        width: 50,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: pressAttention6
                                                ? Colors.black26
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(80)),
                                        child: Image.asset(
                                          "assets/icons/GBT.png",
                                          color: Colors.white,
                                          height: 30,
                                          width: 30,
                                        )),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("GB/T",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                              GestureDetector(
                                  onTap: () {},
                                  child: Column(children: <Widget>[
                                    Container(
                                      width: 50,
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          //color: Colors.black26,
                                          borderRadius:
                                              BorderRadius.circular(80)),
                                      // child: Image.asset(
                                      //   "assets/icons/send.png",
                                      //   color: Colors.white,
                                      //   height: 25,
                                      //   width: 25,
                                      // )
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text("",
                                        style: GoogleFonts.poppins(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ])),
                            ])),
                    const Divider(
                        thickness: 1, height: 40, color: Colors.black26),
                    Text('Discounts Available',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Text('No discounts available',
                        style: GoogleFonts.poppins(
                            color: Colors.black45,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                    const Divider(
                        thickness: 1, height: 40, color: Colors.black26),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Only available chargers',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          IconButton(
                              icon: Icon(
                                  _passwordVisible
                                      ? Icons.toggle_off
                                      : Icons.toggle_on,
                                  color: pressAttention7
                                      ? Colors.black45
                                      : Colors.green,
                                  size: 40),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                  pressAttention7 = !pressAttention7;
                                });
                              }),
                        ]),
                    const Divider(
                        thickness: 1, height: 40, color: Colors.black26),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Only free chargers',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          IconButton(
                              icon: Icon(
                                  _passwordVisible1
                                      ? Icons.toggle_off
                                      : Icons.toggle_on,
                                  color: pressAttention8
                                      ? Colors.black45
                                      : Colors.green,
                                  size: 40),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible1 = !_passwordVisible1;
                                  pressAttention8 = !pressAttention8;
                                });
                              }),
                        ]),
                    const Divider(
                        thickness: 1, height: 40, color: Colors.black26),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Only paid chargers',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          IconButton(
                              icon: Icon(
                                  _passwordVisible2
                                      ? Icons.toggle_off
                                      : Icons.toggle_on,
                                  color: pressAttention9
                                      ? Colors.black45
                                      : Colors.green,
                                  size: 40),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible2 = !_passwordVisible2;
                                  pressAttention9 = !pressAttention9;
                                });
                              }),
                        ]),
                    const Divider(
                        thickness: 1, height: 40, color: Colors.black26),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Apply",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500))))
                  ])),
        ));
  }
}
