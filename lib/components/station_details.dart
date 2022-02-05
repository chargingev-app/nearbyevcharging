import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/booking.dart';

class StationDetails extends StatefulWidget {
  const StationDetails({Key? key}) : super(key: key);

  @override
  _StationDetailsState createState() => _StationDetailsState();
}

class _StationDetailsState extends State<StationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop(true);
            }),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/ElectrifyAmerica-VancouverWA.jpg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    const SizedBox(height: 20),
                    Text("Walmart Greenville AL",
                        style: GoogleFonts.poppins(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    Text("200 NE 21st St Oklahoma City,9201 NY",
                        style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    Row(children: <Widget>[
                      Image.asset("assets/icons/star.png",
                          color: Colors.green, height: 15, width: 15),
                      const SizedBox(width: 5),
                      Image.asset("assets/icons/star.png",
                          color: Colors.green, height: 15, width: 15),
                      const SizedBox(width: 5),
                      Image.asset("assets/icons/star.png",
                          color: Colors.green, height: 15, width: 15),
                      const SizedBox(width: 5),
                      Image.asset("assets/icons/star.png",
                          color: Colors.green, height: 15, width: 15),
                      const SizedBox(width: 5),
                      Image.asset("assets/icons/star.png",
                          color: Colors.black26, height: 15, width: 15),
                    ]),
                    const SizedBox(height: 10),
                    Text("Open 24 Hours             2.5 km",
                        style: GoogleFonts.poppins(
                            color: Colors.green,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("About",
                              style: GoogleFonts.poppins(
                                  color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text("Service",
                              style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text("Review",
                              style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text("Photos",
                              style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                        ]),
                    const Divider(
                        height: 30, thickness: 1, color: Colors.black26),
                    Text("Overview",
                        style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 20),
                    Text(
                        "We're building out a convenient,reliable,customer-centric network of electric vehicle chargers nationwide-at workplaces,in communities,and on highways."
                        "\n\n"
                        "Need to fill up on the road? Enjoy discounted pricing with our pass+ monthly subscription plan.",
                        style: GoogleFonts.poppins(
                            color: Colors.black45,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 80),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const Booking();
                              }));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Book Time & Route",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)))),
                  ]))),
    );
  }
}
