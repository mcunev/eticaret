import 'package:eticaret/categories.dart';
import 'package:flutter/material.dart';
import 'package:eticaret/components/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _homeState();
}

class _homeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWitdh = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              //Başlık
              buildBaslik(),
              //BANNER
              buildBanner(),
              //BUTTON
              Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //ilk eleman
                    children: [
                      buildNavigation(
                          text: "Categories",
                          icon: Icons.menu,
                          widget: CategoriesPage(),
                          context: context),
                      buildNavigation(
                          text: "Favorites",
                          icon: Icons.star_border,
                          widget: favorites(),
                          context: context),
                      buildNavigation(
                          text: "Gifts",
                          icon: Icons.card_giftcard_sharp,
                          widget: gifts(),
                          context: context),
                      buildNavigation(
                          text: "Best Selling",
                          icon: Icons.person_search_outlined,
                          widget: bestSellings(),
                          context: context)
                    ],
                  )),

              const SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text("Sales",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xDD0A1034))),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSalesItem(
                    discount: "%50",
                    photoUrl: "assets/boseSpeaker.png",
                    text: "Speaker",
                    screenwidth: screenWitdh,
                  ),
                  buildSalesItem(
                    discount: "%50",
                    photoUrl: "assets/boseSpeaker.png",
                    text: "Speaker",
                    screenwidth: screenWitdh,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildSalesItem(
                    discount: "%50",
                    photoUrl: "assets/boseSpeaker.png",
                    text: "Speaker",
                    screenwidth: screenWitdh,
                  ),
                  buildSalesItem(
                    discount: "%50",
                    photoUrl: "assets/boseSpeaker.png",
                    text: "Speaker",
                    screenwidth: screenWitdh,
                  ),
                ],
              ),
            ],
          ),
        ),
        //Bottom Navigation Bar
        bottomNavigationBar('home'),
      ],
    )));
  }
}
