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
                  const SizedBox(height: 10),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.black12,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Column(children: <Widget>[
                        Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("20 Feb 2022",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              color: Colors.red, width: 1)),
                                      child: Text("Cancel",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 11))),
                                ])),
                        const Divider(thickness: 1, color: Colors.black26),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Icon(Icons.location_on_outlined,
                                      color: Colors.green, size: 30),
                                  const SizedBox(width: 10),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Carnac Bunder Charging Station",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Text(
                                            "TML Plant,Pune\n"
                                            "Charger A | Charging point 1",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black45,
                                                fontSize: 12)),
                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(5)),
                                                border: Border.all(
                                                    color: Colors.green,
                                                    width: 1)),
                                            child: Row(children: <Widget>[
                                              Text("Navigate",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.green,
                                                      fontSize: 11)),
                                              const SizedBox(width: 5),
                                              const Icon(Icons.navigation,
                                                  color: Colors.green,
                                                  size: 20),
                                            ])),
                                      ]),
                                ])),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Image.asset('assets/icons/ACType-2.png',
                                  width: 20, height: 20, color: Colors.green),
                              const SizedBox(width: 10),
                              Text("AC Type-2",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ])),
                        const Divider(thickness: 1, color: Colors.black26),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Session Charges(estimated)",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  Text("₹150.00",
                                      style: GoogleFonts.poppins(
                                          color: Colors.green, fontSize: 15)),
                                ])),
                      ])),
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10)),
                          color: Colors.black12,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Column(children: <Widget>[
                        Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("22 Feb 2022",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              color: Colors.red, width: 1)),
                                      child: Text("Cancel",
                                          style: GoogleFonts.poppins(
                                              color: Colors.red,
                                              fontSize: 11))),
                                ])),
                        const Divider(thickness: 1, color: Colors.black26),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Icon(Icons.location_on_outlined,
                                      color: Colors.green, size: 30),
                                  const SizedBox(width: 10),
                                  Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Carnac Bunder Charging Station",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        Text(
                                            "TML Plant,Pune\n"
                                                "Charger A | Charging point 1",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black45,
                                                fontSize: 12)),
                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(5)),
                                                border: Border.all(
                                                    color: Colors.green,
                                                    width: 1)),
                                            child: Row(children: <Widget>[
                                              Text("Navigate",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.green,
                                                      fontSize: 11)),
                                              const SizedBox(width: 5),
                                              const Icon(Icons.navigation,
                                                  color: Colors.green,
                                                  size: 20),
                                            ])),
                                      ]),
                                ])),
                        Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(children: <Widget>[
                              Image.asset('assets/icons/ACType-2.png',
                                  width: 20, height: 20, color: Colors.green),
                              const SizedBox(width: 10),
                              Text("AC Type-2",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ])),
                        const Divider(thickness: 1, color: Colors.black26),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Session Charges(estimated)",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                  Text("₹150.00",
                                      style: GoogleFonts.poppins(
                                          color: Colors.green, fontSize: 15)),
                                ])),
                      ])),
                ])));
  }
}
