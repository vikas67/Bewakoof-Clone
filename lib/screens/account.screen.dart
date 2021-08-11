import 'package:bewakoop_clone/Widgets/widget.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: ListView(
        children: [
          AccountOptionWidget(
            onPress: () {},
            subtitle: 'View, modify and track orders',
            title: 'My Order',
          ),
          AccountOptionWidget(
            onPress: () {},
            subtitle: 'View and modify payment methods',
            title: 'My Payment',
          ),
          AccountOptionWidget(
            onPress: () {},
            subtitle: 'Bewakoof wallet History',
            title: 'My Wallet',
          ),
        ],
      ),
    );
  }
}
