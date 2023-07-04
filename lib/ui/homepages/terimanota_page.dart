import 'package:enota/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TerimaNotaPage extends StatelessWidget {
  const TerimaNotaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terima Nota"),
        backgroundColor: Color(0xff00B8E2),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()))
          },
        ),
      ),
      body: Text("Coming Soon"),
    );
  }
}
