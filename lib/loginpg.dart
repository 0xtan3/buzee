import 'package:flutter/material.dart';
class loginpg extends StatefulWidget {
  const loginpg({Key? key}) : super(key: key);

  @override
  State<loginpg> createState() => _loginpgState();
}

class _loginpgState extends State<loginpg> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Column(
          children:[
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/head.webp"
                  )
                )
              )
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Hello",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
              ),
            )
          ]
        ),
      ),
    );
  }
}

