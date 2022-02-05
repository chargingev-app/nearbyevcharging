import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/time_filter.dart';

class ChargingHistory extends StatefulWidget {
  const ChargingHistory({Key? key}) : super(key: key);

  @override
  _ChargingHistoryState createState() => _ChargingHistoryState();
}

class _ChargingHistoryState extends State<ChargingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            elevation: 0.0,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop(true);
                }),
            title: Text("Transaction History",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                      child: Image.asset("assets/icons/edit.png",
                          color: Colors.white, height: 20, width: 20),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TimeFilter();
                        }));
                      }))
            ]),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Your Wallet Balance",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Text("₹310.00",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))
                      ]))
            ])));
  }
}
