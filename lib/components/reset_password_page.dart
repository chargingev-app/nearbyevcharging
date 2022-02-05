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
  bool _passwordVisible = true;
  bool _passwordVisible1 = true;
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
            hintText: "Enter New Password",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black38,
              fontSize: 13,
              fontWeight: FontWeight.w400,
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
            hintText: "Re-Enter New Password",
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
              title: Text("Reset Password",
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
                      Image.asset("assets/images/reset-password.png",
                          height: 120, width: 120),
                      const SizedBox(height: 20),
                      Text(
                          'Set the new password for your account so you can login and access all the features.',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 40),
                      Text('New Password',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      enternewpasswordField,
                      const SizedBox(height: 30),
                      Text('Confirm Password',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 10),
                      reenternewpasswordField,
                      const SizedBox(height: 80),
                      GestureDetector(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) {
                            //       return const OTPVerification();
                            //     }));
                          },
                          child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: Text("Reset Password",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )))),
                    ]))));
  }
}
