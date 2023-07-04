import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enota/ui/homepages/transaction_input.dart';

class TransactionPageResult extends StatelessWidget {
  TransactionPageResult({required Key key}) : super(key: key);

  // Membuat instance dari Firestore
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff00B8E2),
        scaffoldBackgroundColor: Color(0xff00B8E2),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hasil Transaksi",
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff00B8E2)),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff00B8E2),
            ),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TransactionPageInput()))
            },
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            color: Color(0xff00B8E2),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                  child: StreamBuilder<QuerySnapshot>(
                    // Mengambil data dari Firestore
                    stream: firestore.collection('transactions').snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      }

                      // Mengonversi data snapshot menjadi List<DocumentSnapshot>
                      List<DocumentSnapshot> documents = snapshot.data!.docs;

                      return Table(
                        defaultColumnWidth: FixedColumnWidth(100.0),
                        border: TableBorder.all(color: Colors.black, width: 1.0),
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Container(
                                  height: 50.0,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      'Jumlah',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50.0,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      'Item',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50.0,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      'Harga',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Container(
                                  height: 50.0,
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      'Total',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Menampilkan data dari Firestore
                          for (var doc in documents)
                            TableRow(
                              children: [
                                TableCell(
                                  child: Container(
                                    height: 50.0,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        doc['quantity'].toString(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    height: 50.0,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        doc['item'],
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    height: 50.0,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        doc['price'].toString(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Container(
                                    height: 50.0,
                                    color: Colors.white,
                                    child: Center(
                                      child: Text(
                                        doc['total'].toString(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      StreamBuilder<QuerySnapshot>(
                        // Mengambil data dari Firestore
                        stream: firestore.collection('transactions').snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          }

                          // Mengonversi data snapshot menjadi List<DocumentSnapshot>
                          List<DocumentSnapshot> documents = snapshot.data!.docs;

                          // Menghitung total jumlah
                          int totalQuantity = 0;
                          for (var doc in documents) {
                            totalQuantity += doc['quantity'] as int;
                          }

                          return Text(
                            'Jumlah = $totalQuantity',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
