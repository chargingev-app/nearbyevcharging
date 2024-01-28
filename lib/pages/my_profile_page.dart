import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/components/reset_password.dart';
import 'package:flutterevcharging/components/update_emailid.dart';
import 'package:flutterevcharging/components/update_mobile_no.dart';
import 'package:flutterevcharging/components/update_pincode.dart';
import 'package:flutterevcharging/components/updatename.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
            title: Text("My Profile",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))),
              child: Column(children: <Widget>[
                GestureDetector(
                    onTap: () {
                      _tripEditModalBottomSheet(context);
                    },
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/images (5).jpeg')),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            border:
                                Border.all(color: Colors.white, width: 2)))),
                const SizedBox(height: 20),
                Text('Clark Mirosalava',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
              ])),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Personal Info',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600))),
          Container(
              padding: const EdgeInsets.all(20),
              child: Column(children: <Widget>[
                GestureDetector(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Name",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("Clark Mirosalava",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                          Image.asset("assets/icons/skip-track.png",
                              color: Colors.green, height: 20, width: 20),
                        ]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UpdateName();
                      }));
                    }),
                const Divider(height: 40, thickness: 1, color: Colors.black26),
                GestureDetector(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Email ID",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("clarkmirosa@gmail.com",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                          Image.asset("assets/icons/skip-track.png",
                              color: Colors.green, height: 20, width: 20),
                        ]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UpdateEmailID();
                      }));
                    }),
                const Divider(height: 40, thickness: 1, color: Colors.black26),
                GestureDetector(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Mobile Number",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("9012883654",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                          Image.asset("assets/icons/skip-track.png",
                              color: Colors.green, height: 20, width: 20),
                        ]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UpdateMobileNO();
                      }));
                    }),
                const Divider(height: 40, thickness: 1, color: Colors.black26),
                GestureDetector(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("PIN Code",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text("203205",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                          Image.asset("assets/icons/skip-track.png",
                              color: Colors.green, height: 20, width: 20),
                        ]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const UpdatePINCode();
                      }));
                    }),
                const Divider(height: 40, thickness: 1, color: Colors.black26),
                GestureDetector(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Password",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black45,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Text(". . . . . . . . .",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                          Image.asset("assets/icons/skip-track.png",
                              color: Colors.green, height: 20, width: 20),
                        ]),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ResetPassword();
                      }));
                    }),
                const Divider(height: 40, thickness: 1, color: Colors.black26),
              ])),
        ])));
  }

  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              decoration: const BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height * .35,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.topCenter,
                        child: Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Container(
                              height: 10,
                              width: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ))),
                    Text('Change profile photo',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    const Divider(
                        thickness: 1, height: 20, color: Colors.black26),
                    Text('Take profile photo',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 15),
                    Text('Import from gallery',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 15),
                    Text('Remove profile photo',
                        style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ]));
        });
  }
}
