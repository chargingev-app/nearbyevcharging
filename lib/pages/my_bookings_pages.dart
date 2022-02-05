import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({Key? key}) : super(key: key);

  @override
  _MyBookingsState createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
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
            title: Text("My Bookings",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Upcoming Bookings",
                            style: GoogleFonts.poppins(
                                color: Colors.green,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        Text("Cancelled Bookings",
                            style: GoogleFonts.poppins(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ]),
                ])));
  }
}
