import 'package:enota/ui/homepages/item_page.dart';
import 'package:enota/ui/homepages/item_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ItemPageInput extends StatelessWidget {
  ItemPageInput({super.key});
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
                MaterialPageRoute(builder: (context) => ItemPage()),
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
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nama Item'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Item harus diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Satuan'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Satuan harus diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Catatan'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Catatan harus diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Harga Jual'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Harga Jual harus diisi';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Stok'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Stok harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey?.currentState?.validate() == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemPageResult()),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
