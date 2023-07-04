import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:enota/ui/home_page.dart';

class MyToko extends StatelessWidget {
  const MyToko({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text("Toko Saya"),
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
            body: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Color(0xff00B8E2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SafeArea(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 34,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Center(
                            child: Container(
                                width: 300,
                                height: 400,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 30),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Toko Dimas'),
                                      Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('Manisi Jati  No.40'),
                                      Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text('08xxxxxxxxx'),
                                      Divider(
                                        height: 2,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff00B8E2),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Scan Me"),
                      ],
                    ),
                  ))
            ])));
  }
}
