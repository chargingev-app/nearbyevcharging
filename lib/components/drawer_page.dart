import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/pages/charging_details_page.dart';
import 'package:flutterevcharging/pages/transaction_history_page.dart';
import 'package:flutterevcharging/pages/help_page.dart';
import 'package:flutterevcharging/pages/login_page.dart';
import 'package:flutterevcharging/pages/my_bookings_pages.dart';
import 'package:flutterevcharging/pages/my_profile_page.dart';
import 'package:flutterevcharging/pages/my_vehicles_page.dart';
import 'package:flutterevcharging/pages/payment_methods_page.dart';
import 'package:flutterevcharging/pages/stations_page.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 40),
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height,
            color: Colors.green[100],
            child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Row(children: <Widget>[
                          Column(children: <Widget>[
                            Text('Clark Mirosalava',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            Text('clarkmirosa@gmail.com',
                                style: GoogleFonts.poppins(
                                    color: Colors.green,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                          ]),
                        ]),
                        const SizedBox(height: 50),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/account.png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('My Profile',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const MyProfile();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/thunder.png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('Charging',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChargingDetails();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/history (1).png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('Transaction History',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const ChargingHistory();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset(
                                  "assets/icons/charging-station (1).png",
                                  color: Colors.green,
                                  height: 20,
                                  width: 20),
                              const SizedBox(width: 10),
                              Text('Stations',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const Stations();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/car (1).png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('My Vehicles',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const MyVehicles();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/payment-method (1).png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('Payment Methods',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PaymentMethods();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/calendar (1).png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('My Bookings',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const MyBookings();
                              }));
                            }),
                        const SizedBox(height: 25),
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/help (1).png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(width: 10),
                              Text('Help & Support',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HelpSupport();
                              }));
                            }),
                      ]),
                      Column(children: <Widget>[
                        GestureDetector(
                            child: Row(children: <Widget>[
                              Image.asset("assets/icons/logout.png",
                                  color: Colors.green, height: 20, width: 20),
                              const SizedBox(
                                width: 10,
                              ),
                              Text('Log out',
                                  style: GoogleFonts.poppins(
                                      color: Colors.green,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            }),
                        const Divider(
                            thickness: 2, height: 20, color: Colors.black26),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Privacy Policy',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(width: 15),
                              Text('Terms & Conditions',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ]),
                      ]),
                    ]))));
  }
}
