import 'package:eticaret/components/header.dart';
import 'package:eticaret/components/widgets.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({Key? key}) : super(key: key);
  final List<String> categories = [
    'All',
    'Computers',
    'Accessories',
    'SmartPhones',
    'Smart Objects',
    'Speakers',
    'All',
    'Computers',
    'Accessories',
    'SmartPhones',
    'Smart Objects',
    'Speakers',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //Header
            header(title: 'Categories', context: context),
            const SizedBox(
              height: 16,
            ),
            //kategotiler
            Expanded(
              child: ListView(
                children: categories
                    .map((String baslik) =>
                        buildCategory(title: baslik, context: context))
                    .toList(),
              ),
            )

            //bottom Navigation
          ])),
      bottomNavigationBar('seacrh')
    ])));
  }
}
