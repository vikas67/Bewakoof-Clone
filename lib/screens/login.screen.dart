import 'package:flutter/material.dart';

class LoginScreem extends StatefulWidget {
  const LoginScreem({Key? key}) : super(key: key);

  @override
  _LoginScreemState createState() => _LoginScreemState();
}

class _LoginScreemState extends State<LoginScreem> {

  final _emailController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Discover Fashion!",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Lato', color: Colors.black, fontSize: 18.0),
            ),
            Text(
              "Discover Fashion!",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Lato', color: Colors.black, fontSize: 14.0),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: Colors.grey.shade100,
                  focusColor: Colors.black,),
                  controller: _emailController,
            ),
          ],
        ),
      ),
    );
  }
}
