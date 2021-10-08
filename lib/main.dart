import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation avec Flutter',
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade200,
              Colors.blueAccent.shade700,
              Colors.blue.shade900,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              flutterIcon,
              titleSection,
              textSection,
            ],
          ),
        ),
      ),
    );
  }
}

Widget flutterIcon = Container(
  height: 250,
  width: 250,
  padding: const EdgeInsets.all(30),
  margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: const Color.fromRGBO(255, 255, 255, 0.1),
  ),
  child: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 5,
          blurRadius: 15,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Image.network(
        'https://drissas.com/wp-content/uploads/2021/08/flutter-logo.png'),
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(30),
  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Flutter',
        style: GoogleFonts.exo(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w900,
        ),
      ),
      const SizedBox(
        width: 3,
      ),
      Text(
        "login",
        style: GoogleFonts.exo(
          fontSize: 40,
          color: Colors.lightGreenAccent[400],
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.fromLTRB(0, 5, 0, 50),
  child: Text(
    "Page de connexion",
    style: GoogleFonts.comfortaa(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
);
