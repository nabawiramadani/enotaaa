import 'package:enota/ui/homepages/item_page.dart';
import 'package:enota/ui/homepages/mytoko_page.dart';
import 'package:enota/ui/navbar/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enota/ui/login_page.dart';
import 'package:enota/ui/navbar/setting.dart';
import 'package:enota/ui/homepages/transaction_input.dart';
import 'package:enota/ui/homepages/data_page.dart';
import 'package:enota/ui/homepages/report_page.dart';
import 'package:enota/ui/homepages/backup._page.dart';
import 'package:enota/ui/homepages/note_page.dart';
import 'package:enota/ui/homepages/terimanota_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Widget PageHeader(String gambarPage, String namaPage, Widget targetPage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 155,
        height: 95,
        decoration: BoxDecoration(
            color: Color(0xff00B8E2), borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(gambarPage),
                  )),
            ),
            Text(namaPage,
                style: GoogleFonts.roboto(fontSize: 13, color: Colors.white))
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff68E1FD)),
          toolbarHeight: 250,
          backgroundColor: Colors
              .transparent, // Ubah warna latar belakang AppBar menjadi transparan
          elevation: 0, // Hilangkan efek bayangan di bawah AppBar
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/vector_homepage.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Aksi yang ingin dilakukan ketika FAB ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  // Aksi yang ingin dilakukan ketika tombol home ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
              ),
              SizedBox(), // Spacer untuk mengatur jarak antara tombol tengah
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Aksi yang ingin dilakukan ketika tombol settings ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageHeader(
                    "assets/vector_transaksi.png",
                    "Transaction",
                    TransactionPageInput(),
                  ),
                  PageHeader(
                    "assets/vector_item.png",
                    "Item",
                    ItemPage(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageHeader(
                    "assets/vector_tokosaya.png",
                    "Toko Saya",
                    MyToko(),
                  ),
                  PageHeader(
                    "assets/vector_report.png",
                    "Report",
                    ReportPage(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageHeader(
                    "assets/vector_data.png",
                    "Data",
                    DataPage(),
                  ),
                  PageHeader(
                    "assets/vector_terimanota.png",
                    "Terima Nota",
                    TerimaNotaPage(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageHeader(
                    "assets/vector_backup.png",
                    "Backup",
                    BackupPage(),
                  ),
                  PageHeader(
                    "assets/vector_notes.png",
                    "Notes",
                    NotesApp(),
                  ),
                ],
              ),
              Container(
                width: 330,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:enota/ui/login_page.dart';
// import 'package:enota/ui/pages/transaction_input.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Widget HomeHeader(String img, String text) {
//     Widget PageHeader(String gambarPage, String namaPage, Widget targetPage) {
//       return GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => targetPage),
//           );
//         },
//         child: Container(
//           margin: EdgeInsets.all(10),
//           width: 155,
//           height: 95,
//           decoration: BoxDecoration(
//               color: Color(0xff00B8E2),
//               borderRadius: BorderRadius.circular(15)),
//           child: Column(
//             children: [
//               Container(
//                 width: 55,
//                 height: 55,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15),
//                     image: DecorationImage(
//                       image: AssetImage(gambarPage),
//                     )),
//               ),
//               Text(namaPage,
//                   style: GoogleFonts.roboto(fontSize: 13, color: Colors.white))
//             ],
//           ),
//         ),
//       );
//     }

//     return SafeArea(
//       child: Scaffold(
        // appBar: AppBar(
        //   iconTheme: IconThemeData(color: Color(0xff68E1FD)),
        //   toolbarHeight: 250,
        //   backgroundColor: Colors
        //       .transparent, // Ubah warna latar belakang AppBar menjadi transparan
        //   elevation: 0, // Hilangkan efek bayangan di bawah AppBar
        //   flexibleSpace: Stack(
        //     fit: StackFit.expand,
        //     children: [
        //       Image.asset(
        //         'assets/vector_homepage.png',
        //         fit: BoxFit.cover,
        //       ),
        //     ],
        //   ),
        // ),
//         body: Column(
//           children: [
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 PageHeader(
//                   "assets/vector_transaksi.png",
//                   "Transaction",
//                   TransactionPageInput(),
//                 ),
//                 PageHeader(
//                   "assets/vector_item.png",
//                   "Item",
//                   LoginPage(),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 PageHeader(
//                   "assets/vector_tokosaya.png",
//                   "Toko Saya",
//                   LoginPage(),
//                 ),
//                 PageHeader(
//                   "assets/vector_report.png",
//                   "Report",
//                   LoginPage(),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 PageHeader(
//                   "assets/vector_data.png",
//                   "Data",
//                   LoginPage(),
//                 ),
//                 PageHeader(
//                   "assets/vector_terimanota.png",
//                   "Terima Nota",
//                   LoginPage(),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 PageHeader(
//                   "assets/vector_backup.png",
//                   "Backup",
//                   LoginPage(),
//                 ),
//                 PageHeader(
//                   "assets/vector_notes.png",
//                   "Notes",
//                   LoginPage(),
//                 ),
//               ],
//             ),
//             Container(
//               width: 330,
//               height: 125,
//               decoration: BoxDecoration(
//                   color: Colors.transparent,
//                   borderRadius: BorderRadius.circular(15)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }