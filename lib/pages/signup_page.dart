import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nearbyevcharging/api/api_services.dart';
import 'package:nearbyevcharging/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final firstnameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final mobileNoEditingController = TextEditingController();
  final pincodeEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  bool _passwordVisible = true;
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    final firstnameField = TextFormField(
        autofocus: false,
        controller: firstnameEditingController,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: "Enter First Name ",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        validator: (input) =>
            !input!.contains("@") ? "Email Id Should be valid" : null,
        decoration: InputDecoration(
            hintText: "Enter Email ID",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    final mobileNoField = TextFormField(
        autofocus: false,
        controller: mobileNoEditingController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        validator: (input) =>
            input!.length < 10 ? "Mobile number should be  10 numbers" : null,
        decoration: InputDecoration(
            hintText: "Enter Mobile Number",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    final pincodeField = TextFormField(
        autofocus: false,
        controller: pincodeEditingController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        validator: (input) => input!.length < 6
            ? "User Name should be more than 6 characters"
            : null,
        decoration: InputDecoration(
            hintText: "Enter PINCode",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordEditingController,
        obscureText: _passwordVisible,
        textInputAction: TextInputAction.next,
        validator: (input) => input!.length < 5
            ? "Password should be more than 5 characters"
            : null,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black45,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                }),
            hintText: "Enter Password",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )));

    return Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(children: <Widget>[
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/image5.png",
                      height: 250, width: 250)),
              Card(
                  color: Colors.green[50],
                  shadowColor: Colors.green[300],
                  elevation: 10.0,
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('Signup',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                )),
                            const SizedBox(height: 20),
                            Text('Name',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            firstnameField,
                            const SizedBox(height: 20),
                            Text('Email ID',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            emailField,
                            const SizedBox(height: 20),
                            Text('Mobile Number',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            mobileNoField,
                            const SizedBox(height: 20),
                            Text('PIN Code',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            pincodeField,
                            const SizedBox(height: 20),
                            Text('Password',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            passwordField,
                          ]))),
              GestureDetector(
                  onTap: () {
                    callSignupApi();
                  },
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("Signup",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)))),
              const SizedBox(height: 40),
              Row(children: <Widget>[
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black45,
                )),
                Text("  Social Signup  ",
                    style: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black45,
                )),
              ]),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40))),
                    child: const FaIcon(
                      FontAwesomeIcons.apple,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text.rich(TextSpan(
                  text: "Already have an account?  ",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                        text: "LogIn",
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginPage();
                            }));
                          }),
                  ])),
            ])));
  }

  callSignupApi() {
    final service = APIServices();
    service.userSignup(
      {
        //"mobileNumber": "98106590381",
        "mobileNumber": mobileNoEditingController.text,
        "countryCode": "+91",
        //"password": "12345678",
        "password": passwordEditingController.text,
        //"email": "skbhati1990@gmail.com",
        "email": emailEditingController.text,
        "deviceType": "1",
        "userType": "3"
      },
    ).then((value) {
      if (value.error != null) {
        print("get data >>>>>>>" + value.error!);
      }
    });
  }
}
