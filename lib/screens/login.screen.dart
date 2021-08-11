import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreem extends StatefulWidget {
  const LoginScreem({Key? key}) : super(key: key);

  @override
  _LoginScreemState createState() => _LoginScreemState();
}

class _LoginScreemState extends State<LoginScreem> {
  final _emailController = TextEditingController();

  // getcount() async {
  //   SharedPreferences s = await SharedPreferences.getInstance();
  //   s.setString("FirstTIme", "true");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover Fashion!",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "You're just one step away from signing up",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500,
                    fontSize: 12.0),
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.transparent,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email / Mobile no',
                  fillColor: Colors.grey.shade100,
                  focusColor: Colors.black,
                ),
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 14.0),
                controller: _emailController,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.transparent,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40.0,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green.shade600),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: "Rato",
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Bewakoof ? ",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 14.0,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "SIGN Up",
                    style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 14.0,
                        color: Colors.green.shade500,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.transparent,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white, elevation: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/google_icon.svg",
                          semanticsLabel: 'Acme Logo'),
                      Text(
                        "Continuew with google",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: "Rato",
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.transparent,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("Facebook"),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
