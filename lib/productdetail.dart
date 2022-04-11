import 'package:eticaret/components/widgets.dart';
import 'package:flutter/material.dart';
import 'components/header.dart';

class productDetailPage extends StatefulWidget {
  productDetailPage({Key? key, required this.productTitle}) : super(key: key);
  final String productTitle;

  @override
  State<productDetailPage> createState() => _productDetailPageState();
}

class _productDetailPageState extends State<productDetailPage> {
  Color selectedColor = Color(0XFF52514F);
  int selectedCapacity = 64;

  final List<Color> colors = [
    Color(0XFF52514F),
    Color(0XFF0001FC),
    Color(0XFF6F7972),
    Color(0XFFF5d8C0),
  ];
  final List<int> capacities = [64, 256, 512];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Başlık
              header(title: widget.productTitle, context: context),
              const SizedBox(height: 32),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // New Etiketi
                      label(discount: "new"),
                      const SizedBox(height: 25),
                      // ürün fotosu
                      Center(child: Image.asset("assets/boseSpeaker.png")),
                      const SizedBox(
                        height: 30,
                      ),
                      // renk seçenekleri
                      const Text(
                        'Color',
                        style: TextStyle(
                          color: Color(0XFF0A1034),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: colors
                            .map(
                              (Color color) => colorOption(
                                color: color,
                                selected: selectedColor == color,
                                onTap: () {
                                  setState(() {
                                    selectedColor = color;
                                  });
                                },
                              ),
                            )
                            .toList(),
                      ),

                      //Kapasite Seçenekleri
                      const SizedBox(
                        height: 32,
                      ),
                      // renk seçenekleri
                      const Text(
                        'Capacity',
                        style: TextStyle(
                          color: Color(0XFF0A1034),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: capacities
                            .map(
                              (int number) => cappacityOption(
                                capacity: number,
                                selected: selectedCapacity == number,
                                onTap: () {
                                  setState(() {
                                    selectedCapacity = number;
                                  });
                                },
                              ),
                            )
                            .toList(),
                      ),
                      //sepete Ekle butonu
                      const SizedBox(
                        height: 32,
                      ),

                      GestureDetector(
                        onTap: () {
                          print("ürün sepete eklendi");
                          print("ürünün ismi: " + widget.productTitle);
                          print("ürünün rengi: " +
                              selectedColor.value.toString());
                          print("ürünün kapasitesi: " +
                              selectedCapacity.toString());
                        },
                        child: Center(
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0XFF1F53E4)),
                            child: const Text(
                              "Add to cart",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              )
            ])),
        bottomNavigationBar("search")
      ]),
    ));
  }
}
