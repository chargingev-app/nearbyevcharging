import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
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
            title: Text("Payment Methods",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        body: SingleChildScrollView(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Column(children: <Widget>[
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/icons/paytm.png', width: 60),
                            GestureDetector(
                                onTap: () {
                                  _tripEditModalBottomSheet(context);
                                },
                                child: Text("Link Paytm Account",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500))),
                          ])),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/icons/PhonePe.png', width: 80),
                            GestureDetector(
                                onTap: () {
                                  _tripEditModalBottomSheet1(context);
                                },
                                child: Text("Link PhonePe Account",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500))),
                          ])),
                  const SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset('assets/icons/google-pay.png',
                                width: 50),
                            GestureDetector(
                                onTap: () {
                                  _tripEditModalBottomSheet2(context);
                                },
                                child: Text("Link GooglePay Account",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500))),
                          ])),
                ]))));
  }

  void _tripEditModalBottomSheet(context) {
    final mobileNoEditingController = TextEditingController();
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          final mobileNoField = TextFormField(
              autofocus: false,
              controller: mobileNoEditingController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (input) => input!.length < 10
                  ? "Mobile number should be  10 numbers"
                  : null,
              decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )));
          return SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .38,
                  child: Column(children: <Widget>[
                    Image.asset('assets/icons/paytm.png', width: 100),
                    const SizedBox(height: 10),
                    Text(
                        'Please provide your registered Mobile number to send you an OTP',
                        style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    mobileNoField,
                    const SizedBox(height: 20),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Submit",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)))),
                  ])));
        });
  }

  void _tripEditModalBottomSheet1(context) {
    final mobileNoEditingController = TextEditingController();
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          final mobileNoField = TextFormField(
              autofocus: false,
              controller: mobileNoEditingController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (input) => input!.length < 10
                  ? "Mobile number should be  10 numbers"
                  : null,
              decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )));
          return SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .38,
                  child: Column(children: <Widget>[
                    Image.asset('assets/icons/PhonePe.png', width: 130),
                    const SizedBox(height: 10),
                    Text(
                        'Please provide your registered Mobile number to send you an OTP',
                        style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10),
                    mobileNoField,
                    const SizedBox(height: 20),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text("Submit",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)))),
                  ])));
        });
  }

  void _tripEditModalBottomSheet2(context) {
    final mobileNoEditingController = TextEditingController();
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          final mobileNoField = TextFormField(
              autofocus: false,
              controller: mobileNoEditingController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              validator: (input) => input!.length < 10
                  ? "Mobile number should be  10 numbers"
                  : null,
              decoration: InputDecoration(
                  hintText: "Enter Mobile Number",
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.black38,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )));
          return Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              height: MediaQuery.of(context).size.height * .38,
              child: Column(children: <Widget>[
                Image.asset('assets/icons/google-pay.png', width: 90),
                const SizedBox(height: 10),
                Text(
                    'Please provide your registered Mobile number to send you an OTP',
                    style: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 10),
                mobileNoField,
                const SizedBox(height: 20),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text("Submit",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)))),
              ]));
        });
  }
}
