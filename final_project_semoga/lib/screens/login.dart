import 'package:flutter/material.dart';
import 'package:final_project_semoga/screens/home.dart';
import 'package:final_project_semoga/screens/lupaPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 150.0),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
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
            SizedBox(
              height: 20.0,
            ),
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
                    hintText: "Password"),
                obscureText: _obscurePassword,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  // Pindahkan pengguna ke halaman lain di sini
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LupaPassword()),
                  );
                },
                child: Text(
                  "Lupa Password ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            FractionallySizedBox(
              widthFactor:
                  0.4, // Menentukan lebar tombol sebagai persentase dari lebar parent
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(
                        255, 0, 0, 0), // Ubah warna teks tombol menjadi putih
                    minimumSize: Size(50.0, 50.0)),
                child: Text('Login'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
