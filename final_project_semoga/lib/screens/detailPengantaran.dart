import 'package:flutter/material.dart';
import 'package:final_project_semoga/screens/pengiriman.dart';

class DetailPengantaranScreen extends StatefulWidget {
  @override
  _DetailPengantaranScreenState createState() =>
      _DetailPengantaranScreenState();
}

class _DetailPengantaranScreenState extends State<DetailPengantaranScreen> {
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
          title: Text('Pengantaran'),
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
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pengiriman()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150.0, 50.0),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Text('Start'),
              ),
            ],
          ),
        ));
  }
}
