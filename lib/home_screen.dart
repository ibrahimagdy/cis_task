import 'package:cis_task/icons_list.dart';
import 'package:cis_task/sales_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  static const String routeName = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Home",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff1c19fe),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bose Home Speaker",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "USD 279",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                      "assets/images/bose.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height*0.04),
            const Row(
              children: [
                IconWidget(icon: Icon(Icons.list), nameOfIcon: "Categories"),
                IconWidget(icon: Icon(Icons.star_border_outlined), nameOfIcon: "Favorites"),
                IconWidget(icon: Icon(Icons.card_giftcard), nameOfIcon: "Gifts"),
                IconWidget(icon: Icon(Icons.group), nameOfIcon: "Best soling"),
              ],
            ),
            SizedBox(height: mediaQuery.height*0.04),
            const Text(
              "Sales",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: mediaQuery.height*0.03),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  SalesWidget(
                      imagePath: "assets/images/phone.png",
                      nameOfImage: "Smartphones",
                  ),
                  SalesWidget(
                      imagePath: "assets/images/monitor.png",
                      nameOfImage: "Monitors",
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color(0xff6468da),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
              label: "home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "home"

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "home"

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "home"

            ),
          ],
        ),
      ),
    );
  }

}