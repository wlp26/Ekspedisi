import 'package:flutter/material.dart';
import 'profile.dart';
import 'history.dart';
import 'detail_pengantaran.dart';
import 'detail_history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  List<Map<String, dynamic>> pengantaranData =
      []; // List to hold the fetched pengantaran data
  List<Map<String, dynamic>> historyData =
      []; // List to hold the fetched history data

  @override
  void initState() {
    super.initState();
    // fetchPengantaranData(); // Fetch pengantaran data from API when the screen initializes
    // fetchHistoryData(); // Fetch history data from API when the screen initializes
  }

  // Future<void> fetchPengantaranData() async {
  //   // Simulate API call and fetch pengantaran data
  //   // Replace this with your actual API call to fetch the pengantaran data
  //   await Future.delayed(Duration(seconds: 2)); // Simulating delay
  //   List<Map<String, dynamic>> apiPengantaranData = [
  //     {
  //       'orderNumber': '123',
  //       'jadwalPengantaran': '2023-07-10',
  //       'tujuan': 'Destination 1',
  //     },
  //     {
  //       'orderNumber': '456',
  //       'jadwalPengantaran': '2023-07-12',
  //       'tujuan': 'Destination 2',
  //     },
  //     // Add more data here if needed
  //   ];
  //   setState(() {
  //     pengantaranData = apiPengantaranData;
  //   });
  // }

  // Future<void> fetchHistoryData() async {
  //   // Simulate API call and fetch history data
  //   // Replace this with your actual API call to fetch the history data
  //   await Future.delayed(Duration(seconds: 2)); // Simulating delay
  //   List<Map<String, dynamic>> apiHistoryData = [
  //     {
  //       'orderNumber': '789',
  //       'tanggalSampai': '2023-07-15',
  //       'tujuan': 'Destination 3',
  //     },
  //     {
  //       'orderNumber': '012',
  //       'tanggalSampai': '2023-07-20',
  //       'tujuan': 'Destination 4',
  //     },
  //     // Add more data here if needed
  //   ];
  //   setState(() {
  //     historyData = apiHistoryData;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
        actions: [
          Row(
            children: [
              Switch(
                value: isSwitched,
                activeColor: Colors.black,
                inactiveThumbColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              Text(
                isSwitched ? 'On' : 'Off',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'List Pengantaran',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.grey[200], // Set the desired shade of grey
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.image), // Replace with your thumbnail
                  ),
                  title: Text('Order Number'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jadwal Pengantaran'),
                      Text('Tujuan'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPengantaranScreen()),
                      );
                    },
                  ),
                ),
              ),
              Card(
                color: Colors.grey[200], // Set the desired shade of grey
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.image), // Replace with your thumbnail
                  ),
                  title: Text('Order Number'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Jadwal Pengantaran'),
                      Text('Tujuan'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      // Add the desired functionality when the button is pressed
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'History',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.grey[200], // Set the desired shade of grey
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.image), // Replace with your thumbnail
              ),
              title: Text('Order Number'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tanggal Sampai'), // Different subtitle for history
                  Text('Tujuan'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailHistoryScreen()),
                  );
                },
              ),
            ),
          ),
          Card(
            color: Colors.grey[200], // Set the desired shade of grey
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.image), // Replace with your thumbnail
              ),
              title: Text('Order Number'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tanggal Sampai'), // Different subtitle for history
                  Text('Tujuan'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Add the desired functionality when the button is pressed
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              },
              child: Text(
                'View More',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
      // ini untuk kalo mau pake api tinggal ditambah copy untuk yang history data dan ditambah button view more untuk ke page history
      // body: ListView.builder(
      //   itemCount: pengantaranData.length,
      //   itemBuilder: (context, index) {
      //     final data = pengantaranData[index];
      //     return Card(
      //       color: Colors.grey[200], // Set the desired shade of grey
      //       child: ListTile(
      //         leading: CircleAvatar(
      //           child: Icon(Icons.image), // Replace with your thumbnail
      //         ),
      //         title: Text(data['orderNumber'] ?? ''),
      //         subtitle: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(data['jadwalPengantaran'] ?? ''),
      //             Text(data['tujuan'] ?? ''),
      //           ],
      //         ),
      //         trailing: IconButton(
      //           icon: Icon(Icons.arrow_forward),
      //           onPressed: () {
      //             // Add the desired functionality when the button is pressed
      //           },
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
