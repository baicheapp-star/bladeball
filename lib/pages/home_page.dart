import "package:bladeball/components/blade_container.dart";
import "package:bladeball/components/my_button.dart";
import "package:bladeball/components/why_container.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 17, 20, 48),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            toolbarHeight: 80,
            leadingWidth: 200,
            backgroundColor: Colors.transparent.withOpacity(0.7).withBlue(20),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyButton(
                  BorderRadius: BorderRadius.circular(20),
                  data: '0',
                  height: 40,
                  width: 75,
                  ColorData: Colors.lightBlue,
                  icon: Icons.shopping_cart,
                  IconColor: Colors.lightBlue,
                  ColorConainer: Colors.transparent.withOpacity(0),
                  BorderColor: const Color.fromARGB(255, 125, 196, 255),
                  BorderWidth: 2,
                  padding: EdgeInsetsGeometry.all(5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'loginpage');
                  },
                  child: MyButton(
                    BorderRadius: BorderRadius.circular(15),
                    data: 'Login',
                    height: 40,
                    width: 130,
                    ColorData: Colors.white,
                    icon: Icons.login,
                    IconColor: Colors.black,
                    ColorConainer: Colors.blue,
                    BorderColor: Colors.lightBlue,
                    BorderWidth: 2,
                    padding: EdgeInsetsGeometry.all(5),
                  ),
                ),
              ),
            ],

            leading: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0, right: 2),
                    child: Image.asset('lib/assets/blade.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          "BLADE",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'ZONE',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: SizedBox(
            width: 2000,
            height: 2000,
            child: Stack(
              children: [
                SizedBox.expand(
                  child: Image.asset(
                    "lib/assets/background.png",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),

                Positioned(
                  top: 90,
                  left: 100,
                  child: Text(
                    'BUY RARE',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 90,
                  child: Text(
                    ' BLADE BALL',
                    style: TextStyle(
                      color: Color(0xFF00F0FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Positioned(
                  top: 190,
                  left: 90,
                  child: Text(
                    ' BLADES',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 800,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: Image.asset('lib/assets/BladeBall.png', scale: 2),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 100,
                  child: SizedBox(
                    width: 700,
                    child: Text(
                      'DOMINATE EVERY MATCH',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 290,
                  left: 100,
                  child: SizedBox(
                    width: 700,
                    child: Text(
                      'Upgrade your gameplay with exclusive blades,\n limited skins, and fast delivery.',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 340,
                  child: GestureDetector(
                    onTap: () {Navigator.pushNamed(context, 'shoppage');},
                    child: MyButton(
                      BorderRadius: BorderRadius.circular(10),
                      padding: EdgeInsetsGeometry.all(3),
                      BorderWidth: 2,
                      BorderColor: Colors.blue,
                      ColorConainer: Colors.transparent.withOpacity(0.3),
                      IconColor: Colors.blue,
                      icon: Icons.arrow_forward,
                      data: 'VIEW COLLECTION',
                      width: 250,
                      height: 50,
                      ColorData: Colors.white,
                    ),
                  ),
                ),
                
 Positioned(
                    top: 330,
                    left: 100,
                    child:GestureDetector(onTap: () {
                  Navigator.pushNamed(context, 'loginpage');
                }, child: MyButton(
                      BorderRadius: BorderRadius.circular(10),
                      padding: EdgeInsetsGeometry.all(3),
                      BorderWidth: 4,
                      BorderColor: Colors.lightBlue,
                      ColorConainer: Colors.blue,
                      IconColor: Colors.black,
                      icon: Icons.shopping_cart,
                      data: 'SHOP NOW',
                      width: 180,
                      height: 50,
                      ColorData: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 390,
                  left: 100,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      children: [
                        Icon(Icons.star, color: Colors.amberAccent, size: 30),
                        Column(
                          children: [
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'Rating',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[900],
                              borderRadius: BorderRadius.circular(2),
                            ),
                            height: 50,
                            width: 5,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Colors.amberAccent,
                              size: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Instant',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    'Delivery',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                height: 50,
                                width: 5,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.red,
                              size: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  '10K+',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: Text(
                                    'Orders',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 600, left: 30, right: 30),
                  child: Divider(color: Colors.white, thickness: 1),
                ),
                Positioned(
                  top: 640,
                  left: 810,
                  child: Text(
                    'FEATURED BLADES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 680,
                  left: 820,
                  child: Text(
                    'Handpicked blades for true champions.',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                Positioned(
                  top: 720,
                  left: 340,
                  child: Row(
                    children: [
                      BladeContainer(
                        BorderWidth: 2,
                        BorderColor: Colors.purpleAccent,
                        image: 'lib/assets/Prince_Blade.webp',
                        name: 'Prince Blade',
                        price: '€2.00',
                        rap: '2.1K',
                        ColorConainer: Colors.transparent.withOpacity(0.2),
                        NameColor: Colors.white,
                        PriceColor: Colors.deepPurpleAccent,
                        RapColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 720,
                  left: 670,
                  child: Row(
                    children: [
                      BladeContainer(
                        BorderWidth: 2,
                        BorderColor: Colors.lightBlue,
                        image: 'lib/assets/Blue_Ninja_Katana.webp',
                        name: 'Blue Ninja Katana',
                        price: '€9.99',
                        rap: '6K',
                        ColorConainer: Colors.transparent.withOpacity(0.2),
                        NameColor: Colors.white,
                        PriceColor: Colors.lightBlue,
                        RapColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 720,
                  left: 990,
                  child: Row(
                    children: [
                      BladeContainer(
                        BorderWidth: 2,
                        BorderColor: const Color.fromARGB(255, 212, 121, 114),
                        image: 'lib/assets/Oni_Ghost.webp',
                        name: 'Oni Ghost',
                        price: '€12.99',
                        rap: '7.1K',
                        ColorConainer: Colors.transparent.withOpacity(0.2),
                        NameColor: Colors.white,
                        PriceColor: Color.fromARGB(255, 212, 121, 114),
                        RapColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 720,
                  left: 1300,
                  child: Row(
                    children: [
                      BladeContainer(
                        BorderWidth: 2,
                        BorderColor: Colors.blueAccent,
                        image: 'lib/assets/Coffin.webp',
                        name: 'Coffin',
                        price: '€15.99',
                        rap: '9.7K',
                        ColorConainer: Colors.transparent.withOpacity(0.2),
                        NameColor: Colors.white,
                        PriceColor: Colors.blueAccent,
                        RapColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 1100,
                  left: 785,
                  child: GestureDetector(onTap: () {
                    Navigator.pushNamed(context, 'loginpage');
                  },
                    child: MyButton(
                      data: 'VIEW ALL BLADES',
                      height: 50,
                      width: 300,
                      ColorData: Colors.blue,
                      icon: Icons.arrow_forward,
                      IconColor: Colors.blue,
                      ColorConainer: Colors.transparent.withOpacity(0.4),
                      BorderColor: Colors.lightBlue,
                      BorderWidth: 2,
                      padding: EdgeInsetsGeometry.all(0),
                      BorderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1200,
                    left: 30,
                    right: 30,
                  ),
                  child: Divider(thickness: 1),
                ),
                Positioned(
                  top: 1240,
                  left: 790,
                  child: Row(
                    children: [
                      Text(
                        'WHY CHOOSE ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'BLADEZONE?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 1340,
                  left: 500,
                  child: WhyContainer(
                    icon: Icons.bolt,
                    title: 'Fast Delivery',
                    description:
                        'instant delivery to \nyour account.No waiting.',
                  ),
                ),
                Positioned(
                  top: 1340,
                  left: 800,
                  child: WhyContainer(
                    icon: Icons.shield,
                    title: 'SECURE PAYMENTS',
                    description: 'your payments are 100%\nsafe and protected.',
                  ),
                ),
                Positioned(
                  top: 1340,
                  left: 1170,
                  child: WhyContainer(
                    icon: Icons.military_tech,
                    title: 'TRUSTED BY PLAYERS',
                    description: 'join thousands of happy\nplayers worldwide.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1500,
                    left: 30,
                    right: 30,
                  ),
                  child: Divider(thickness: 1),
                ),
                Positioned(
                  top: 1550,
                  left: 790,
                  child: Text(
                    'WHAT PLAYERS SAY',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Positioned(
                  top: 1640,
                  left: 500,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.green,
                                        width: 3,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'lib/assets/roblox3.webp',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                ],
                              ),
                              Text(
                                '"Best blade ball\n shop ever"',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'shadowNinja',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 1640,
                  left: 800,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.pink,
                                        width: 3,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'lib/assets/roblox2.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                ],
                              ),
                              Text(
                                '"Super fast delivery\n and amazing blades!"',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'clappedBy',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 1640,
                  left: 1130,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.amber,
                                        width: 3,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                        'lib/assets/roblox1.webp',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                  Icon(Icons.star, color: Colors.amber),
                                ],
                              ),

                              Text(
                                '"Totally legit and support\n is awesome"',
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'ProgamerX',
                                  style: TextStyle(color: Colors.blueAccent),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1830,
                    left: 30,
                    right: 30,
                  ),
                  child: Divider(thickness: 1),
                ),
                Positioned(
                  top: 1850,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.7),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 2.0,
                                        right: 2,
                                      ),
                                      child: Image.asset(
                                        'lib/assets/blade.png',
                                        scale: 8,
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Text(
                                          'BLADE',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        Text(
                                          'ZONE',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'The ultimate Blade Ball blade shop.\nUpgrade your gameplay with the rarest\n blades and fastest delivery.',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(
                                'Shop',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'All Blades:\nMythic\nLegendary\nEpic\nRare',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Text(
                                    'Support',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'FAQ\nContact Us\nDelivery Info\nReturns',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Text(
                                    'Legal',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Terms of service\nPrivacy Policy',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Text(
                                    'Stay Tuned',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Get updates on new blades\n and exclusive offers',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: SizedBox(
                                      width: 300,
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          hintText: 'Enter your Email',
                                          icon: Icon(Icons.email),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          focusColor: Colors.blue,
                                          hoverColor: Colors.blue,
                                          fillColor: Colors.blue,
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
