import 'package:eticaret/components/header.dart';
import 'package:eticaret/productdetail.dart';
import 'package:flutter/material.dart';
import 'package:eticaret/components/widgets.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({Key? key, required this.categoryTitle}) : super(key: key);
  final String categoryTitle;
  final List<Map> products = [
    {
      "Name": "Surface Laptop 1",
      "photo": "assets/boseSpeaker.png",
      "price": "799"
    },
    {
      "Name": "Iphone 11 pro ",
      "photo": "assets/boseSpeaker.png",
      "price": "899"
    },
    {
      "Name": "bose heasphone",
      "photo": "assets/boseSpeaker.png",
      "price": "999"
    },
    {
      "Name": "Surface Laptop 4",
      "photo": "assets/boseSpeaker.png",
      "price": "1000"
    },
    {
      "Name": "Surface Laptop 5",
      "photo": "assets/boseSpeaker.png",
      "price": "1050"
    },
    {
      "Name": "Surface Laptop 6",
      "photo": "assets/boseSpeaker.png",
      "price": "1100"
    },
    {
      "Name": "Surface Laptop 7",
      "photo": "assets/boseSpeaker.png",
      "price": "1200"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Başlık
              header(title: categoryTitle, context: context),
              const SizedBox(
                height: 32,
              ),

//filtreler

//içerikler

              Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: products.map((Map product) {
                    return buildContent(
                        title: product["Name"].toString(),
                        photoURL: product["photo"].toString(),
                        price: product["price"].toString(),
                        context: context);
                  }).toList(),
                ),
              )
            ],
          )),
      //bottom navigation bar
      bottomNavigationBar('search'),
    ])));
  }
}

Widget buildContent(
    {required String title,
    required String photoURL,
    required String price,
    required context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return productDetailPage(
          productTitle: title,
        );
      }));
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 24,
              offset: const Offset(0, 16))
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          //resim
          Image.asset(photoURL),
          const SizedBox(
            height: 30,
          ),
          //yazılar
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Color(0xFF0A1034),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text('$price USD',
                  style: const TextStyle(
                      color: Color(0xFF0001FC),
                      fontSize: 12,
                      fontWeight: FontWeight.w500))
            ],
          )
        ],
      ),
    ),
  );
}
