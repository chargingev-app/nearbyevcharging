import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/components/otpverification_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final mobileNoEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mobileNoField = TextFormField(
        autofocus: false,
        controller: mobileNoEditingController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        validator: (input) =>
            input!.length < 10 ? "Mobile number should be  10 numbers" : null,
        decoration: InputDecoration(
            hintText: "Enter Mobile No ",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              title: Text("Forgot Password",
                  style: GoogleFonts.poppins(color: Colors.white)),
              backgroundColor: Colors.green,
              elevation: 0,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  }),
              centerTitle: true,
            )),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 60),
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image.asset("assets/images/Forgot password-amico.png",
                          height: 200, width: 200),
                      const SizedBox(height: 10),
                      Text(
                          'Enter your mobile number for the verification process, We will send you 4 digits code to your mobile number.',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 40),
                      Text('Mobile No.',
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                      mobileNoField,
                      const SizedBox(height: 80),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const OTPVerification();
                            }));
                          },
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Text("Send OTP",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ))))
                    ]))));
  }
}
