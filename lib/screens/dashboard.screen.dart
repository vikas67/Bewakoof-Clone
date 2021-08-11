import 'package:bewakoop_clone/Widgets/widget.dart';
import 'package:bewakoop_clone/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var loginCheck = false;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  Future getBanner() async {
    print("run http");

    var url = Uri.parse('http://161.97.180.201:8082/app/api/home/dashboard');
    var response = await http.get(url, headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    });
    print(response.statusCode);
    print(response.body);
  }

  final tabs = [
    Container(
      child: loginCheck ? LoginScreem() : ProductScreen(),
    ),
    Container(
      child: CategoriesScreen(),
    ),
    Container(
      child: loginCheck ? WishlistScreen() : LoginScreem(),
    ),
    Container(
      child: loginCheck ? AccountScreen() : LoginScreem(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                getBanner();
              }),
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.black87,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black87,
              ),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_sharp,
                color: Colors.black87,
              ),
              label: "My Wishlist"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.black87,
              ),
              label: "Account"),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: tabs[_selectedIndex],
    );
  }
}
