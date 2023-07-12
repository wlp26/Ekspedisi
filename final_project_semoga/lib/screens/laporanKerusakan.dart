import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> list = <String>[
  'Pick up',
  'Truk sedang',
  'Truk besar',
  'Four'
];

class LaporanKerusakan extends StatefulWidget {
  _LaporanKerusakan createState() => _LaporanKerusakan();
}

class _LaporanKerusakan extends State<LaporanKerusakan> {
  String dropDownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text("Laporan Kerusakan"),
            backgroundColor: Colors.black),
        body: Center(
            child: Container(
                child: Column(children: [
          Container(
            child: Text(
              "Jenis Kendaraan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(top: 24.0, bottom: 8.0),
          ),
          Container(
            width: 350, // Mengatur lebar container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                ),
                value: dropDownValue,
                icon: Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 8,
                style: TextStyle(color: Colors.black),
                onChanged: (String? value) {
                  setState(() {
                    dropDownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            child: Text(
              "Nomor Plat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          ),
          Container(
              width: 350, // Mengatur lebar container
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                ),
              )),
          Container(
            child: Text(
              "Deskripsi Kerusakan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          ),
          Container(
              width: 350, // Mengatur lebar container

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                ),
                maxLines: 5,
              )),
          SizedBox(
            height: 32.0,
          ),
          ElevatedButton(
            onPressed: () {
              // Add your desired functionality when the button is pressed
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(120.0, 50.0),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text('Submit'),
          ),
        ]))));
  }
}
