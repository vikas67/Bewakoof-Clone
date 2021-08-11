import 'package:flutter/material.dart';

class AccountOptionWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onPress;

  const AccountOptionWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_right_outlined,
                color: Colors.grey.shade400,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 3.0),
            child: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontFamily: 'Lato',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12.0),
            width: MediaQuery.of(context).size.width,
            child: Divider(
              color: Colors.grey.shade500,
              height: 2.0,
            ),
          ),
          Divider(
            color: Colors.transparent,
            height: 25.0,
          )
        ],
      ),
    );
  }
}
