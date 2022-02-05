import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/reset_password_page.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({Key? key}) : super(key: key);

  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              title: Text("OTP Verification",
                  style: GoogleFonts.poppins(color: Colors.white)),
              backgroundColor: Colors.green,
              centerTitle: true,
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  }),
              elevation: 0,
            )),
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 90),
                padding: const EdgeInsets.all(30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image.asset("assets/images/Fast-and-scalable-OTP-system-Graphics.png",
                          height: 200, width: 200),
                      const SizedBox(height: 20),
                      Text(
                          'Enter the 4 digits code that you received on your mobile number.',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 40),
                      OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 50,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                      ),
                      const SizedBox(height: 80),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ResetPassword();
                            }));
                          },
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Text("Verify",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ))))
                    ]))));
  }
}
