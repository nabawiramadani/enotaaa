import 'package:enota/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff00B8E2),
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()))
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(117, 0, 117, 0),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/vector_registrationpage.png"),
                    fit: BoxFit.contain)),
          ),
          Text(
            "E-Nota",
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff00B8E2)),
          ),
          Text(
            "Registration Account",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff093F68)),
          ),
          Text(
            "Pastikan alamat email dan nomor telepon anda valid. Email dan nomor\n telepon yang anda  masukan digunakan untuk mengirimkan\n tautan verifikasi dan informasi terkait",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xff093F68)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: TextField(
              style: TextStyle(color: Color(0xff00B8E2)),
              decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Color(0xff00B8E2)),
                  prefixIcon: Icon(
                    Icons.call,
                    color: Color(0xff00B8E2),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: TextField(
              style: TextStyle(color: Color(0xff00B8E2)),
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Color(0xff00B8E2)),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: Color(0xff00B8E2),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: TextField(
              style: TextStyle(color: Color(0xff00B8E2)),
              decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Color(0xff00B8E2)),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff00B8E2),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Container(
              width: 230,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff00B8E2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  child: Text("Submit",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
