import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nearbyevcharging/components/add_vehicle.dart';

class MyVehicles extends StatefulWidget {
  const MyVehicles({Key? key}) : super(key: key);

  @override
  _MyVehiclesState createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
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
            title: Text("My Vehicles",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ))),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add, color: Colors.white, size: 40),
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AddVehicle();
              }));
            }),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black26, width: 1)),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Jaguar I-PACE",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        Row(children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                _tripEditModalBottomSheet(context);
                              },
                              child: const Icon(Icons.delete_outlined,
                                  color: Colors.red)),
                          const SizedBox(width: 20),
                          const Icon(Icons.edit_outlined, color: Colors.green),
                        ]),
                      ]),
                  Image.asset('assets/images/image7.png',
                      width: 400, height: 220),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Vehicle Registration Number",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text("UP 13 AX 4488",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            const Divider(
                                thickness: 1,
                                height: 20,
                                color: Colors.black26),
                            Text("Connector",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Image.asset('assets/icons/ACType-2.png',
                                        width: 20,
                                        height: 20,
                                        color: Colors.green),
                                    const SizedBox(width: 10),
                                    Text("AC Type-2",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                              color: Colors.black45, width: 1)),
                                      child: Text("AC",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black45,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500))),
                                ]),
                          ])),
                ])),
            Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black26, width: 1)),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Ather 450X",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        Row(children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                _tripEditModalBottomSheet(context);
                              },
                              child: const Icon(Icons.delete_outlined,
                                  color: Colors.red)),
                          const SizedBox(width: 20),
                          const Icon(Icons.edit_outlined, color: Colors.green),
                        ]),
                      ]),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/image8.png', height: 250),
                  const SizedBox(height: 10),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Vehicle Registration Number",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text("UP 13 U 4596",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            const Divider(
                                thickness: 1,
                                height: 20,
                                color: Colors.black26),
                            Text("Connector",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Image.asset('assets/icons/ACType-2.png',
                                        width: 20,
                                        height: 20,
                                        color: Colors.green),
                                    const SizedBox(width: 10),
                                    Text("AC Type-2",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                              color: Colors.black45, width: 1)),
                                      child: Text("AC",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black45,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500))),
                                ]),
                          ])),
                ])),
            Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black26, width: 1)),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Revolt RV 400",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        Row(children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                _tripEditModalBottomSheet(context);
                              },
                              child: const Icon(Icons.delete_outlined,
                                  color: Colors.red)),
                          const SizedBox(width: 20),
                          const Icon(Icons.edit_outlined, color: Colors.green),
                        ]),
                      ]),
                  const SizedBox(height: 10),
                  Image.asset('assets/images/image9.png', height: 250),
                  const SizedBox(height: 10),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Vehicle Registration Number",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Text("UP 13 U 5512",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            const Divider(
                                thickness: 1,
                                height: 20,
                                color: Colors.black26),
                            Text("Connector",
                                style: GoogleFonts.poppins(
                                  color: Colors.black45,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                )),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Image.asset('assets/icons/ACType-2.png',
                                        width: 20,
                                        height: 20,
                                        color: Colors.green),
                                    const SizedBox(width: 10),
                                    Text("AC Type-2",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  ]),
                                  Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                              color: Colors.black45, width: 1)),
                                      child: Text("AC",
                                          style: GoogleFonts.poppins(
                                              color: Colors.black45,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500))),
                                ]),
                          ])),
                ])),
          ]),
        ));
  }

  void _tripEditModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              height: MediaQuery.of(context).size.height * .35,
              child: Column(children: <Widget>[
                const SizedBox(height:20),
                Text('Remove Vehicle?',
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                Text('Do you really want to remove vehicle information?',
                    style: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width / 3,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text("NO",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)))),
                      Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 3,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text("Yes",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400))),
                    ]),
              ]));
        });
  }
}
