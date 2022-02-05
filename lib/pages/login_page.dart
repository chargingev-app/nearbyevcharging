import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nearbyevcharging/components/forgot_password_page.dart';
import 'package:nearbyevcharging/pages/home_page.dart';
import 'package:nearbyevcharging/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final passwordEditingController = TextEditingController();
  final mobileNoEditingController = TextEditingController();
  bool _passwordVisible = true;
  bool value1 = false;
  @override
  Widget build(BuildContext context) {

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

    final mobileNoField = TextFormField(
        autofocus: false,
        controller: mobileNoEditingController,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        validator: (input) => input!.length < 10
            ? "Mobile number should be  10 numbers"
            : null,
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
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(children: <Widget>[
              const SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/image4.png",
                      height: 250, width: 250)),
              Card(
                  color: Colors.green[50],
                  shadowColor: Colors.green[300],
                  elevation: 10.0,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('Login',
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            const SizedBox(height: 20),
                            Text('Mobile Number',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                            mobileNoField,
                            const SizedBox(height: 20),
                            Text('Password',
                                style: GoogleFonts.poppins(
                                    color: Colors.black54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                            passwordField,
                            const SizedBox(height: 10),
                            Container(
                                padding: const EdgeInsets.all(10),
                                alignment: Alignment.centerRight,
                                child: RichText(
                                    text: TextSpan(
                                        text: "Forgot Password?",
                                        style: GoogleFonts.poppins(
                                          color: Colors.blue,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return const ForgotPassword();
                                            }));
                                          })))
                          ]))),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Checkbox(
                          value: value1,
                          activeColor: Colors.green,
                          onChanged: (value) {
                            setState(() {
                              value1 = value!;
                            });
                          }),
                      Text("Remember me",
                          style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                    ]),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const Home();
                              }));
                        },
                        child: Container(
                            width: 150,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))),
                            child: Text("Login",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)))),
                  ]),
              const SizedBox(height: 40),
              Row(children: <Widget>[
                const Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.black45,
                )),
                Text("  Social Login  ",
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
                  text: "New User?  ",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                        text: "SignUp",
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignupPage();
                            }));
                          }),
                  ])),
            ])));
  }
}
