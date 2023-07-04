import 'package:enota/ui/homepages/data_page.dart';
import 'package:enota/ui/homepages/data_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DataPageInput extends StatelessWidget {
  DataPageInput({super.key});
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
                MaterialPageRoute(builder: (context) => DataPage()),
              );
            },
          ),
          title: Text(
            'Add',
            style: TextStyle(
              color: Colors.white, // Warna caption "Add"
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Alamat'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telepon'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataPageResult()),
                  );
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
