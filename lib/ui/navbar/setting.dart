import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:enota/ui/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Setting"),
              backgroundColor: Color(0xff00B8E2),
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                },
              ),
            ),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 20,
              ),
              Text("Security Setting",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00B8E2))),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    TextContainer(
                      text1: 'Ubah nomor ponsel',
                      text2: 'Email',
                      text3: 'Password',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Tentang",
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff00B8E2))),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                width: 330,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    TextContainer(
                      text1: 'Pusat bantuan',
                      text2: 'Syarat & ketentuan',
                      text3: 'Keuntungan E-Nota',
                    ),
                  ],
                ),
              )
            ])));
  }
}

class TextContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;

  TextContainer(
      {required this.text1, required this.text2, required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 173,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text1,
                style: GoogleFonts.poppins(
                    color: Color(0xff00B8E2),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  // Aksi ketika tombol ikon ditekan
                  // Tambahkan logika yang sesuai di sini
                },
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Color(0xff00B8E2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text2,
                style: GoogleFonts.poppins(
                    color: Color(0xff00B8E2),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  // Aksi ketika tombol ikon ditekan
                  // Tambahkan logika yang sesuai di sini
                },
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Color(0xff00B8E2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text3,
                style: GoogleFonts.poppins(
                    color: Color(0xff00B8E2),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  // Aksi ketika tombol ikon ditekan
                  // Tambahkan logika yang sesuai di sini
                },
              ),
            ],
          ),
          Divider(
            height: 2,
            color: Color(0xff00B8E2),
          ),
        ],
      ),
    );
  }
}
