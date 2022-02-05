import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
            title: Text("Notifications",
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
                  Text("Today",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 20),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/25-percent.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child: RichText(
                      text: TextSpan(
                          text: 'Get 25% discount at ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Walmart Greenville AL ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'Station.   8h',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 30),
                  Text("This week",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 20),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/10-percent.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child:RichText(
                      text: TextSpan(
                          text: 'Get 10% discount at ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Walmart Greenville AL ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'Station.   2d',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/loading.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child:RichText(
                      text: TextSpan(
                          text: 'Your ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Jaguar I-PACE EV ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'charging 100% completed.   3d',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 30),
                  Text("This Month",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 20),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/10-percent.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child:RichText(
                      text: TextSpan(
                          text: 'Get 10% discount at ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Walmart Greenville AL ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'Station.   1w',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/loading.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child:RichText(
                      text: TextSpan(
                          text: 'Your ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Jaguar I-PACE EV ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'charging 100% completed.   2w',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/50-percent.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child: RichText(
                      text: TextSpan(
                          text: 'Get 50% discount at ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Walmart Greenville AL ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'Station.   1w',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: <Widget>[
                    Image.asset("assets/icons/loading.png",
                        height: 40, width: 40),
                    const SizedBox(width: 10),
                    Flexible(
                        child:RichText(
                      text: TextSpan(
                          text: 'Your ',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Jaguar I-PACE EV ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'charging 100% completed.   2w',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ]),
                    )),
                  ]),
                ])));
  }
}
