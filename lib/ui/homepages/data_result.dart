import 'package:enota/ui/homepages/data_input.dart';
import 'package:flutter/material.dart';

class DataPageResult extends StatelessWidget {
  DataPageResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                    MaterialPageRoute(builder: (context) => DataPageInput()),
                  );
                },
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer Item',
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
                        color: Colors.white, // Warna latar belakang box
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
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 55,
                                      height: 55,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/box_vector.png"))),
                                    ),
                                    Column(
                                      children: [
                                        Text("Gula Pasir"),
                                        Text("Stok 15kg")
                                      ],
                                    ),
                                    Text("10000"),
                                  ],
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
            SizedBox(height: 10),
            Divider(
              height: 2,
              color: Colors.black,
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
                  MaterialPageRoute(builder: (context) => DataPageInput()),
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
