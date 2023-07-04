import 'package:enota/ui/home_page.dart';
import 'package:enota/ui/homepages/item_input.dart';
import 'package:flutter/material.dart';

class ItemPageResult extends StatelessWidget {
  ItemPageResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primaryColor: Color(0xff00B8E2), // Warna latar belakang AppBar
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff00B8E2), // Warna latar belakang AppBar
        ),
      ),
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white, // Warna ikon back button
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Data',
                    style: TextStyle(
                      color: Colors.white, // Warna caption "Customer Data"
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white, // Warna ikon search
                    ),
                    onPressed: () {
                      // Aksi ketika tombol search ditekan
                      // Tambahkan logika yang sesuai di sini
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 315,
                      height: 126,
                      decoration: BoxDecoration(
                        color: Color(0xff00B8E2), // Warna latar belakang box
                        borderRadius: BorderRadius.circular(
                            10), // Tumpulkan sudut box dengan nilai radius yang diinginkan
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(
                            16.0), // Memberikan jarak pada konten dalam box
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Set perataan teks menjadi rata kiri
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Nama',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  ':',
                                  style: TextStyle(
                                    color: Colors.white, // Warna tanda ":"
                                    fontSize: 16, // Ubah ukuran tanda ":"
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  'Nabawi Ramadani',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign
                                      .start, // Set perataan teks menjadi rata kiri
                                ),
                              ],
                            ),
                            SizedBox(height: 8), // Jarak antara teks
                            Row(
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  ':',
                                  style: TextStyle(
                                    color: Colors.white, // Warna tanda ":"
                                    fontSize: 16, // Ubah ukuran tanda ":"
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  'nabawipnd@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign
                                      .start, // Set perataan teks menjadi rata kiri
                                ),
                              ],
                            ),
                            SizedBox(height: 8), // Jarak antara teks
                            Row(
                              children: [
                                Text(
                                  'No HP',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  ':',
                                  style: TextStyle(
                                    color: Colors.white, // Warna tanda ":"
                                    fontSize: 16, // Ubah ukuran tanda ":"
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Jarak antara tanda ":" dan teks
                                Text(
                                  '0821000000',
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks
                                    fontSize: 16, // Ubah ukuran teks menjadi 16
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign
                                      .start, // Set perataan teks menjadi rata kiri
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white, // Warna ikon edit
                            ),
                            onPressed: () {
                              // Aksi ketika tombol edit ditekan
                              // Tambahkan logika yang sesuai di sini
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white, // Warna ikon hapus
                            ),
                            onPressed: () {
                              // Aksi ketika tombol hapus ditekan
                              // Tambahkan logika yang sesuai di sini
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ItemPageInput()),
                );
              },
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
