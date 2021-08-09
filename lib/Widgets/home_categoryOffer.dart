import 'package:flutter/material.dart';

class HomeCategoryOffer extends StatefulWidget {
  @override
  _HomeCategoryOfferState createState() => _HomeCategoryOfferState();
}

class _HomeCategoryOfferState extends State<HomeCategoryOffer> {
  List<int> text = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Category Deal",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                letterSpacing: 3.0),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 1,
            crossAxisSpacing: 10.0,
            children: [
              for (var i in text)
                Container(
                  width: 90.0,
                  height: 90.0,
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 5.0),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        "https://images.unsplash.com/photo-1521498542256-5aeb47ba2b36?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dHNoaXJ0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
