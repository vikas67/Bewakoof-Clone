import 'package:flutter/material.dart';
import '../Widgets/widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  HomeOfferWidget(),
    );
  }
}