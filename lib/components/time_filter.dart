import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeFilter extends StatefulWidget {
  const TimeFilter({Key? key}) : super(key: key);

  @override
  _TimeFilterState createState() => _TimeFilterState();
}

class _TimeFilterState extends State<TimeFilter> {
  var _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.23,
                alignment: Alignment.center,
                color: Colors.green,
                padding: const EdgeInsets.only(
                   left: 20, right: 20, top: 40),
                child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          child: Image.asset("assets/icons/x.png",
                              color: Colors.white, height: 20, width: 20),
                          onTap: () {
                            Navigator.of(context).pop();
                          })),
                  const SizedBox(height: 10),
                  Text('Time Filter',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.19,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 30, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text("Show transactions for",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(height: 20),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Last 15 days',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Radio(
                                        value: 1,
                                        activeColor: Colors.green,
                                        groupValue: _value,
                                        onChanged: (value) {}),
                                  ]),
                              const Divider(height: 40, thickness: 1, color: Colors.black26),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Last 1 Month',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Radio(
                                        value: 2,
                                        activeColor: Colors.green,
                                        groupValue: _value,
                                        onChanged: (value) {}),
                                  ]),
                              const Divider(height: 40, thickness: 1, color: Colors.black26),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Last 3 months',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Radio(
                                        value: 3,
                                        activeColor: Colors.green,
                                        groupValue: _value,
                                        onChanged: (value) {}),
                                  ]),
                              const Divider(height: 40, thickness: 1, color: Colors.black26),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Last 6 months',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black87,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Radio(
                                        value: 4,
                                        activeColor: Colors.green,
                                        groupValue: _value,
                                        onChanged: (value) {}),
                                  ]),
                              const Divider(height: 40, thickness: 1, color: Colors.black26),
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      alignment: Alignment.center,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Text("Clear",
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width / 3,
                                  padding: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Text("Apply",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400))),
                            ]),
                      ]),
                )),
          ])),
    ])));
  }
}
