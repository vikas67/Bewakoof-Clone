import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Widgets/widget.dart';

class MenScreen extends StatefulWidget {
  @override
  _MenScreenState createState() => _MenScreenState();


}

class _MenScreenState extends State<MenScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 200.0,
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "data:image/jpeg;base64,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",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Divider(
            height: 40.0,
            color: Colors.transparent,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 90.0,
                          height: 90.0,
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90.0,
                          margin: EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            "Design of the Day",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Lightning Deal (6PM-12Am)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        fontFamily: 'Lato',
                        letterSpacing: 2.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1.0),
                          child: Image.network(
                            'https://image.shutterstock.com/image-photo/3d-wallpaper-seven-horses-running-260nw-1429981745.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                  )
                ],
              )),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Mystery Deal",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        letterSpacing: 3.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1.0),
                          child: Image.network(
                            'https://image.shutterstock.com/image-photo/3d-wallpaper-seven-horses-running-260nw-1429981745.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                  )
                ],
              )),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          HomeOfferWidget(),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          HomeCategoryOffer(),
          Divider(
            height: 20.0,
            color: Colors.transparent,
          ),
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Lightning Deal (6PM-12Am)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        letterSpacing: 3.0),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: AspectRatio(
                        aspectRatio: 4 / 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(1.0),
                          child: Image.network(
                            'https://image.shutterstock.com/image-photo/3d-wallpaper-seven-horses-running-260nw-1429981745.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                  )
                ],
              )),
          Divider(
            height: 24.0,
            color: Colors.transparent,
          ),
          Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Lightning Deal (6PM-12Am)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        letterSpacing: 3.0),
                  ),
                  AspectRatio(
                    aspectRatio: 4 / 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: CarouselSlider(
                        options: CarouselOptions(
                            autoPlay: true,
                            viewportFraction: 90,
                            pauseAutoPlayOnTouch: true),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration:
                                      BoxDecoration(color: Colors.amber),
                                  child: Text(
                                    'text $i',
                                    style: TextStyle(fontSize: 16.0),
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              )),
          AspectRatio(
            aspectRatio: 4 / 1.5,
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: false,
                    viewportFraction: 90,
                    pauseAutoPlayOnTouch: true),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(color: Colors.blue[400]),
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Divider(
            height: 24.0,
            color: Colors.transparent,
          ),
          Container(
              alignment: Alignment.center,
              child: Column(children: [
                Text(
                  "Top Wear",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      letterSpacing: 3.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 3,
                    shrinkWrap: true,
                    crossAxisSpacing: 20.0,
                    children: [
                      Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 2 / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                child: Image.network(
                                  'https://image.shutterstock.com/image-photo/3d-wallpaper-seven-horses-running-260nw-1429981745.jpg',
                                  fit: BoxFit.cover,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "men csacsdcsdc",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
