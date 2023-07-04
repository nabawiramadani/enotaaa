import 'package:enota/ui/home_page.dart';
import 'package:enota/ui/homepages/item_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  final GlobalKey<FormState>? _formKey = GlobalKey<FormState>();

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
        appBar: AppBar(
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
                'Item',
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemPageInput()),
            );
          },
          child: Icon(Icons.add),
          backgroundColor:
              Color(0xff00B8E2), // Warna latar belakang tombol plus
        ),
      ),
    );
  }
}
