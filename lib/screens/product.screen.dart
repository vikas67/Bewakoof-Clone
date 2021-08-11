import 'package:flutter/material.dart';
import 'package:bewakoop_clone/Widgets/widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black45,
            )),
        title: Text(
          "Product",
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButtonWidgets(icon: Icons.search, onPressed: () {}),
          IconButtonWidgets(icon: Icons.search, onPressed: () {}),
          IconButtonWidgets(icon: Icons.search, onPressed: () {}),
        ],
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1/2,
                    child: Image.network(
                      '',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 5.0),
                    child: Text(
                      "Paint",
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Paint",
                      maxLines: 1,
                      style: TextStyle(
                          fontFamily: 'Lato', fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
