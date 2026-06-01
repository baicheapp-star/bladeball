import 'package:bladeball/components/my_button.dart';
import 'package:flutter/material.dart';

class BladeContainer extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String rap;
  final Color ColorConainer;
  final Color NameColor;
  final Color PriceColor;
  final Color RapColor;
  final Color BorderColor;
  final double BorderWidth;
  const BladeContainer({
    super.key,
    required this.price,
    required this.image,
    required this.name,
    required this.rap,
    required this.ColorConainer,
    required this.NameColor,
    required this.PriceColor,
    required this.RapColor,
    required this.BorderColor,
    required this.BorderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SizedBox(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: BorderColor,width: BorderWidth),
              color: ColorConainer,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image, scale: 3),

                  const SizedBox(height: 10),

                  Text(
                    name,
                    style: TextStyle(
                      color: NameColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5,left: 8),
                          child: Text(
                            price,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: PriceColor, fontSize: 25),
                          ),
                        ),
                     Container(
                       decoration: BoxDecoration(
                         color: Colors.blue[900],
                         borderRadius: BorderRadius.circular(2),
                       ),
                       height: 30,
                       width: 5,
                     ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text('RAP: $rap',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: RapColor, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.pushNamed(context, 'loginpage');
                  },
                    child: MyButton(
                      data: 'Buy',
                      height: 40,
                      width: 200,
                      ColorData: Colors.blue,
                      icon: Icons.shopping_cart,
                      IconColor: Colors.blue,
                      ColorConainer: ColorConainer,
                      BorderColor: Colors.lightBlue,
                      BorderWidth: 2,
                      padding: EdgeInsetsGeometry.all(0),
                      BorderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
