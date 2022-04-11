// ignore_for_file: camel_case_types

import 'package:eticaret/category.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class favorites extends StatelessWidget {
  const favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class gifts extends StatelessWidget {
  const gifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class bestSellings extends StatelessWidget {
  const bestSellings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget picture({required String path}) {
  return Flexible(
    child: Padding(
      padding: const EdgeInsets.all(2),
      child: FractionallySizedBox(
        alignment: Alignment.centerRight,
        widthFactor: 0.4,
        // heightFactor: 0.4,
        child: Image.asset(
          path,
          fit: BoxFit.scaleDown,
        ),
      ),
    ),
  );
}

Widget buildBaslik() {
  return const Padding(
    padding: EdgeInsets.only(
      top: 24.0,
      left: 16,
    ),
    child: Text(
      'HOME',
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 32, color: Color(0xFF0a1034)),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: const EdgeInsets.only(top: 24),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
      decoration: BoxDecoration(
        color: const Color(0xFF0001FC),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Bose Home Speaker",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "USD 279",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          //picture(path: "assets/boseSpeaker.png")
          Image.asset("assets/boseSpeaker.png"),
        ],
      ),
    ),
  );
}

Widget buildNavigation({
  required String text,
  required IconData icon,
  required Widget widget,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xFFE0ECF8)),
          child: Icon(
            icon,
            color: const Color(0XFF0001FC),
            size: 18,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF1F53E4),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}

Widget buildSalesItem({
  required String discount,
  required String photoUrl,
  required String text,
  required double screenwidth,
}) {
  return Container(
    width: (screenwidth - 60) * 0.5,
    padding: const EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label(discount: discount),
        const SizedBox(height: 22),
        Center(child: Image.asset(photoUrl)),
        const SizedBox(
          height: 22,
        ),
        Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 18, color: Color(0xFF0A1034)),
          ),
        ),
      ],
    ),
  );
}

Widget buildNavIcon({required IconData iconData, required bool active}) {
  return Icon(
    iconData,
    size: 20,
    color: Color(active ? 0XFF0001FC : 0XFF0A1034),
  );
}

Widget buildCategory({required String title, context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CategoryPage(
          categoryTitle: title,
        );
      }));
    },
    child: Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4))
          ]),
      child: Text(
        title,
        style: const TextStyle(
          color: Color(0XFF0A1034),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

Widget bottomNavigationBar(String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, -3),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10)
      ], color: const Color(0XFFEFF5FB)),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(iconData: Icons.home_filled, active: page == "home"),
          buildNavIcon(
              iconData: Icons.search_rounded, active: page == "search"),
          buildNavIcon(
              iconData: Icons.shopping_bag_rounded, active: page == "cart"),
          buildNavIcon(
              iconData: Icons.person_rounded, active: page == "account"),
        ],
      ),
    ),
  );
}

Widget colorOption({
  required Color color,
  required bool selected,
  required Function onTap,
}) {
  return GestureDetector(
    onTap: onTap(),
    child: Container(
      width: 23,
      height: 23,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: Border.all(
              color: Color(selected ? 0XFF0001FC : 0XFFA7695BE),
              width: selected ? 3 : 0)),
    ),
  );
}

Widget cappacityOption(
    {required int capacity, required bool selected, required Function onTap}) {
  return GestureDetector(
    onTap: onTap(),
    child: Center(
      child: Container(
        margin: const EdgeInsets.only(right: 23),
        child: Text(
          "$capacity gb ",
          style: TextStyle(
              fontSize: 16, color: Color(selected ? 0XFF0001FC : 0XFFA7695BE)),
        ),
      ),
    ),
  );
}

label({required String discount}) {
  return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: const Color(0xFFF0ECF8)),
      child: Text(
        discount,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Color(0xFF1F53E4), fontSize: 12),
      ));
}
