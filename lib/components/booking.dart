import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop(true);
                }),
            elevation: 0.0),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Text('February 2022',
                      style: GoogleFonts.poppins(
                          color: const Color(0xff363636),
                          fontSize: 25,
                          fontWeight: FontWeight.w700)),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 90,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        demoDates("Mon", "21", true),
                        demoDates("Tue", "22", false),
                        demoDates("Wed", "23", false),
                        demoDates("Thur", "24", false),
                        demoDates("Fri", "25", false),
                        demoDates("Sat", "26", false),
                        demoDates("Sun", "27", false),
                      ])),
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      alignment: Alignment.centerLeft,
                      child: Text('Morning',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff363636),
                              fontSize: 22,
                              fontWeight: FontWeight.w600))),
                  GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 2.7,
                      children: [
                        TimingsData("08:30 AM", true),
                        TimingsData("10:30 AM", false),
                        TimingsData("12:30 PM", false),
                        TimingsData("02:30 PM", false),
                        TimingsData("04:30 PM", false),
                        TimingsData("06:30 pM", false),
                      ]),
                  Container(
                      margin: const EdgeInsets.only(top: 30),
                      alignment: Alignment.centerLeft,
                      child: Text('Evening',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff363636),
                              fontSize: 22,
                              fontWeight: FontWeight.w600))),
                  GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      childAspectRatio: 2.7,
                      children: [
                        TimingsData("08:30 PM", true),
                        TimingsData("10:30 PM", false),
                        TimingsData("12:30 AM", false),
                        TimingsData("02:30 AM", false),
                        TimingsData("04:30 AM", false),
                        TimingsData("06:30 AM", false),
                      ]),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(top: 100),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text("Book",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)))),
                ]))));
  }

  Widget demoDates(String day, String date, bool isSelected) {
    return isSelected
        ? Container(
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(day,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(7),
                  child: Text(date,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500))),
            ]))
        : Container(
            width: 70,
            margin: const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: const Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(10)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(day,
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(7),
                  child: Text(date,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500))),
            ]));
  }

  Widget TimingsData(String time, bool isSelected) {
    return isSelected
        ? Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(
                    Icons.access_time,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: Text(
                    '08:30 AM',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              color: const Color(0xffEEEEEE),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  child: const Icon(
                    Icons.access_time,
                    color: Colors.black,
                    size: 16,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: Text(
                    '08:30 pM',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
