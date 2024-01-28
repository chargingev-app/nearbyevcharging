import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/pages/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/—Pngtree—conceptual drawing of electric car_6658877.png'),
                        fit: BoxFit.fill))),
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(children: <Widget>[
                  Image.asset("assets/images/Image2.png",
                      height: 100, width: 100),
                  const SizedBox(height: 10),
                  AutoSizeText("Find a charging station",
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(height: 20),
                  AutoSizeText(
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at this layout.",
                      maxLines: 3,
                      style: GoogleFonts.poppins(
                          color: Colors.black45,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  const SizedBox(height: 50),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const LoginPage();
                        }));
                      },
                      child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.green[500],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: Text("Get Started",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)))),
                ])),
          ]),
        ));
  }
}
