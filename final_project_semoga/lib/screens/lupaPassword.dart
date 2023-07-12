import 'package:flutter/material.dart';
import 'package:final_project_semoga/screens/login.dart';

class LupaPassword extends StatefulWidget {
  @override
  _LupaPassword createState() => _LupaPassword();
}

class _LupaPassword extends State<LupaPassword> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ganti Password"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(1, 206, 206, 206),
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: "Username"),
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(1, 206, 206, 206),
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.black,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Password Lama"),
                    obscureText: _obscurePassword,
                  ),
                ),
                SizedBox(height: 8.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(1, 206, 206, 206),
                        width: 5.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.black,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: _togglePasswordVisibility,
                          child: Icon(
                            _obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                        hintText: "Password Baru"),
                    obscureText: _obscurePassword,
                  ),
                ),
                SizedBox(height: 24.0),
                FractionallySizedBox(
                  widthFactor:
                      0.4, // Menentukan lebar tombol sebagai persentase dari lebar parent
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 0, 0,
                            0), // Ubah warna teks tombol menjadi putih
                        minimumSize: Size(50.0, 50.0)),
                    child: Text('Submit'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ),
              ])),
    );
  }
}
