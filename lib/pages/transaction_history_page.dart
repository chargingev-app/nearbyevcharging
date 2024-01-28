import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterevcharging/components/time_filter.dart';

class ChargingHistory extends StatefulWidget {
  const ChargingHistory({Key? key}) : super(key: key);

  @override
  _ChargingHistoryState createState() => _ChargingHistoryState();
}

class _ChargingHistoryState extends State<ChargingHistory> {
  final List<Map<String, String>> listOfColumns = [
    {
      "Date": "18-jan",
      "Debit": "",
      "Credit": "₹1.00",
      "Balance": "₹304.11",
      "Details": "Details"
    },
    {
      "Date": "17-jan",
      "Debit": "",
      "Credit": "₹3.00",
      "Balance": "₹303.11",
      "Details": "Details"
    },
    {
      "Date": "16-jan",
      "Debit": "",
      "Credit": "₹300.00",
      "Balance": "₹300.11",
      "Details": "Details"
    },
    {
      "Date": "15-jan",
      "Debit": "",
      "Credit": "₹3.00",
      "Balance": "₹300.11",
      "Details": "Details"
    },
    {
      "Date": "14-jan",
      "Debit": "₹150",
      "Credit": "",
      "Balance": "₹0.11",
      "Details": "Details"
    },
    {
      "Date": "14-jan",
      "Debit": "₹550",
      "Credit": "",
      "Balance": "₹300.11",
      "Details": "Details"
    },
    {
      "Date": "12-jan",
      "Debit": "₹250",
      "Credit": "",
      "Balance": "₹300.11",
      "Details": "Details"
    },
    {
      "Date": "11-jan",
      "Debit": "",
      "Credit": "₹300.00",
      "Balance": "₹300.11",
      "Details": "Details"
    },
    {
      "Date": "11-jan",
      "Debit": "₹250",
      "Credit": "",
      "Balance": "₹300.11",
      "Details": "Details"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Map<String, String> map = listOfColumns[0];
    // String date = map["Date"].toString();

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            elevation: 0.0,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop(true);
                }),
            title: Text("Transaction History",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                      child: Image.asset("assets/icons/edit.png",
                          color: Colors.white, height: 20, width: 20),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const TimeFilter();
                        }));
                      }))
            ]),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Your Wallet Balance",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Text("₹310.00",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ])),
              const SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Text("From",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                          Text("03-Feb-2022",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ]),
                        Container(
                          width: 2,
                          height: 40,
                          color: Colors.white,
                        ),
                        Column(children: <Widget>[
                          Text("To",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                          Text("18-Feb-2022",
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ]),
                      ])),
              const SizedBox(height: 20),
              DataTable(
                dataRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.white),
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.black12),
                columnSpacing: 28,
                headingRowHeight: 30,
                dataRowHeight: 40.0,
                columns: const [
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Debit')),
                  DataColumn(label: Text('Credit')),
                  DataColumn(label: Text('Balance')),
                  DataColumn(label: Text('Details')),
                ],
                rows: listOfColumns
                    .map(((element) => DataRow(cells: <DataCell>[
                          DataCell(Text(element['Date'].toString(),
                              style:
                                  GoogleFonts.poppins(color: Colors.black38))),
                          DataCell(Text(element["Debit"].toString(),
                              style: GoogleFonts.poppins(color: Colors.red))),
                          DataCell(Text(element["Credit"].toString(),
                              style: GoogleFonts.poppins(color: Colors.green))),
                          DataCell(Text(element["Balance"].toString(),
                              style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500))),
                          DataCell(Text(element["Details"].toString(),
                              style: GoogleFonts.poppins(color: Colors.cyan))),
                        ])))
                    .toList(),
              ),
            ])));
  }
}
