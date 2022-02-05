import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key? key}) : super(key: key);

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  final registrationNoEditingController = TextEditingController();
  var dropdownValue;
  var dropdownValue1;
  @override
  Widget build(BuildContext context) {
    final registrationNoField = TextFormField(
        autofocus: false,
        controller: registrationNoEditingController,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: "Vehicle Registration Number",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black45,
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
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 40),
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
                  Text('Add Vehicle Info',
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
                      left: 20, right: 20, top: 50, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              DropdownButton<String>(
                                  value: dropdownValue,
                                  isExpanded: true,
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined ,size: 30),
                                  elevation: 16,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                  underline: Container(
                                      height: 1, color: Colors.black45),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Jaguar',
                                    'TaTa',
                                    'MG',
                                    'Hyundai'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  hint: Text("Select Company",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500))),
                              const SizedBox(height: 40),
                              DropdownButton<String>(
                                  value: dropdownValue1,
                                  isExpanded: true,
                                  icon: const Icon(
                                      Icons.keyboard_arrow_down_outlined ,size: 30),
                                  elevation: 16,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                  underline: Container(
                                      height: 1, color: Colors.black45),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue1 = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Jaguar',
                                    'TaTa',
                                    'MG',
                                    'Hyundai'
                                  ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                  hint: Text("Select Modle",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black45,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500))),
                              const SizedBox(height: 40),
                              registrationNoField,
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
                                child: Text("Add",
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
