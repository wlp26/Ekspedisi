import 'package:flutter/material.dart';

class DetailHistoryScreen extends StatefulWidget {
  @override
  _DetailHistoryScreenState createState() => _DetailHistoryScreenState();
}

class _DetailHistoryScreenState extends State<DetailHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Histori'),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 40.0),
          child: Column(
            children: [
              Card(
                color: const Color.fromARGB(1, 206, 206, 206),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Text(
                          'Nomor Order',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Driver',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Driver Name',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Jenis Kendaraan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Nama Kendaraan'),
                    ),
                    ListTile(
                      title: Text(
                        'Nomor Plat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Nomor'),
                    ),
                    ListTile(
                      title: Text(
                        'Jenis Barang',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Barang'),
                    ),
                    ListTile(
                      title: Text(
                        'Alamat Asal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Alamat'),
                    ),
                    ListTile(
                      title: Text(
                        'Alamat Tujuan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Alamat'),
                    ),
                    ListTile(
                      title: Text(
                        'Tanggal Pengantaran',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Tanggal'),
                    ),
                    ListTile(
                      title: Text(
                        'Tanggal Selesai',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text('Tanggal'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
