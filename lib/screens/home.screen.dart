import 'package:bewakoop_clone/Widgets/widget.dart';
import 'package:bewakoop_clone/screens/screens.dart';
import 'package:flutter/material.dart';
import '../Widgets/widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
            child: Scaffold(
                drawer: Drawer(),
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  iconTheme: IconThemeData(color: Colors.black87),
                  title: Text(
                    'Bewakoof',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        fontSize: 17.0,
                        letterSpacing: -0.4),
                  ),
                  actions: [
                    IconButtonWidgets(
                      icon: Icons.search,
                      onPressed: () {
                        print('serach');
                      },
                    ),
                    IconButtonWidgets(
                      icon: Icons.notifications_none,
                      onPressed: () {},
                    ),
                    IconButtonWidgets(
                      icon: Icons.badge,
                      onPressed: () {},
                    ),
                  ],
                ),
                body: Container(
                  child: Column(
                    children: [
                      SizedBox(
                          height: 50,
                          child: AppBar(
                            elevation: 0,
                            backgroundColor: Colors.white.withOpacity(0.9),
                            bottom: TabBar(
                                indicatorColor: Colors.yellow[500],
                                indicatorWeight: 4,
                                tabs: [
                                  TabWidget(text: 'MEN', fontsize: 10.0),
                                  TabWidget(text: 'WOMEN', fontsize: 10.0),
                                  TabWidget(
                                      text: 'ACCESSORIES', fontsize: 10.0),
                                ]),
                          )),
                      Expanded(
                          child: TabBarView(
                        children: [
                          MenScreen(),
                          WomenScreen(),
                          AccessoriesScreen()
                        ],
                      ))
                    ],
                  ),
                ))));
  }
}
