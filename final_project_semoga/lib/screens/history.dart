import 'package:flutter/material.dart';
import 'package:final_project_semoga/screens/detailHistory.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String? selectedFilter = 'Filter By';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("History"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButton<String>(
                        value: selectedFilter,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedFilter = newValue;
                          });
                        },
                        items: <String>[
                          'Filter By',
                          'By Date',
                          'By Destination',
                          'By Order Name'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.grey[400],
                        ),
                        isExpanded: true,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                // atur lebar sesuai kebutuhan Anda
                height: 80,
                child: Card(
                  color: const Color.fromARGB(
                      1, 206, 206, 206), // Set the desired shade of grey
                  child: ListTile(
                    minVerticalPadding: 10.0,
                    leading: CircleAvatar(
                      child: Icon(Icons.image), // Replace with your thumbnail
                    ),
                    title: Text('Order Number'),
                    titleTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jadwal Pengantaran'),
                        Text('Tujuan'),
                      ],
                    ),
                    trailing: IconButton(
                      alignment: Alignment.topCenter,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailHistoryScreen()),
                        );
                      },
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailHistoryScreen()),
                    ),
                  ),
                ),
              ),
              Container(
                // atur lebar sesuai kebutuhan Anda
                height: 80,
                child: Card(
                  color: const Color.fromARGB(
                      1, 206, 206, 206), // Set the desired shade of grey
                  child: ListTile(
                    minVerticalPadding: 8.0,
                    leading: CircleAvatar(
                      child: Icon(Icons.image), // Replace with your thumbnail
                    ),
                    title: Text('Order Number'),
                    titleTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Jadwal Pengantaran'),
                        Text('Tujuan'),
                      ],
                    ),
                    trailing: IconButton(
                      alignment: Alignment.topCenter,
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        // Add the desired functionality when the button is pressed
                      },
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailHistoryScreen()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
