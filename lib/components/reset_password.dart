import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final enternewpasswordController = TextEditingController();
  final reenternewpasswordController = TextEditingController();
  final oldpasswordController = TextEditingController();
  bool _passwordVisible = true;
  bool _passwordVisible1 = true;
  bool _passwordVisible3 = true;
  @override
  Widget build(BuildContext context) {
    final enternewpasswordField = TextFormField(
        autofocus: false,
        controller: enternewpasswordController,
        obscureText: _passwordVisible,
        textInputAction: TextInputAction.next,
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
            hintText: "New Password",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black26,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            )));

    final reenternewpasswordField = TextFormField(
        autofocus: false,
        controller: reenternewpasswordController,
        obscureText: _passwordVisible1,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible1 ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black45,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible1 = !_passwordVisible1;
                  });
                }),
            hintText: "Confirm Password",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black26,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            )));

    final oldpasswordField = TextFormField(
        autofocus: false,
        controller: oldpasswordController,
        obscureText: _passwordVisible,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible3 ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black45,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible3 = !_passwordVisible3;
                  });
                }),
            hintText: "Old Password",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black26,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            )));
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.23,
                alignment: Alignment.center,
                color: Colors.green,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          child: Image.asset("assets/icons/x.png",
                              color: Colors.white, height: 20, width: 20),
                          onTap: () {
                            Navigator.of(context).pop();
                          })),
                  const SizedBox(height: 10),
                  Text('Reset Password',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.19,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Image.asset("assets/images/reset-password.png",
                              height: 110, width: 110),
                          const SizedBox(height: 20),
                          Text('Set New Password',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(height: 30),
                          oldpasswordField,
                          const SizedBox(height: 30),
                          enternewpasswordField,
                          const SizedBox(height: 30),
                          reenternewpasswordField,
                        ]),
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text("Update",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)))),
                      ]),
                )),
          ])),
    ])));
  }
}
