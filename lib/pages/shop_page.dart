import "package:bladeball/components/blade_container.dart";
import "package:bladeball/components/my_button.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> blades = [
      {
        'description':
            'Devastated by the death of your friend Jeff, you bring him back to fight with you on the battlefield.',
        'image': 'lib/assets/Coffin.webp',
        'name': 'Coffin',
      },
      {
        'description':
            'A spectral manifestation of a vengeful spirit, burning with ethereal blue fire.',
        'image': 'lib/assets/Oni_Ghost.webp',
        'name': 'Oni Ghost',
      },
      {
        'description':
            'The blue Ninja Katana has a blade that radiates a cool, azure light, delivering swift and precise cuts with icy efficiency.',
        'image': 'lib/assets/Blue_Ninja_Katana.webp',
        'name': 'Blue Ninja Katana',
      },
      {
        'description':
            'A sword wielded by a great elven warrior. Awarded as limited #5',
        'image': 'lib/assets/Prince_Blade.webp',
        'name': 'Prince Blade',
      },
      {
        'description': 'Forged in the heart of a shattered spectrum.',
        'image': 'lib/assets/Prismatic_Odachi.webp',
        'name': 'Prismatic Odachi',
      },
      {
        'description':
            'A katana forged in the void, wielded by the most feared Oni assassins. Its strikes are silent—but fatal.',
        'image': 'lib/assets/Black_Oni_Katana.webp',
        'name': 'Black Oni Katana',
      },
      {
        'description': 'A Shark... Literally.',
        'image': 'lib/assets/Shark.webp',
        'name': 'Shark',
      },
      {
        'description':
            'This imposing greatsword features a striking design of intermingling black and white, symbolizing the duality of yin and yang. Its blade harnesses the equilibrium of cosmic forces for powerful strikes.',
        'image': 'lib/assets/Yin_Yang_Greatsword.webp',
        'name': 'Yin Yang Greatsword',
      },
      {
        'description':
            'A cursed cross lantern weapon that glows with eerie light drawn from the restless dead.',
        'image': 'lib/assets/Gravelight.webp',
        'name': 'Gravelight',
      },
      {
        'description': 'Included with the Black Blade Ball Hoodie.',
        'image': 'lib/assets/Void_Guardian.webp',
        'name': 'Void Guardian',
      },
      {
        'description': 'Adorable on the outside, fatal on contact.',
        'image': 'lib/assets/Poisoned_Bunny.webp',
        'name': 'Poisoned Bunny',
      },
      {
        'description':
            'Bound within a living curse, the blade does not rest in a sheath - but in flesh.',
        'image': 'lib/assets/The_Curse.webp',
        'name': 'The Curse',
      },
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,
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
              child: GestureDetector(onTap: () {
                Navigator.pushNamed(context, 'homepage');
              },
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
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "lib/assets/background.png",
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount;
      
              if (constraints.maxWidth < 600) {
                crossAxisCount = 1; // phones
              } else if (constraints.maxWidth < 1000) {
                crossAxisCount = 2; // tablets
              } else {
                crossAxisCount = 4; // desktop/web
              }
      
              return GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: blades.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) {
                  final blade = blades[index];
      
                  return BladeContainer(
                    BorderWidth: 2,
                    BorderColor: Colors.lightBlue,
                    image: blade['image'],
                    name: blade['name'],
                    price: '3',
                    rap: '3',
                    ColorConainer: Colors.transparent.withOpacity(0.2),
                    NameColor: Colors.white,
                    PriceColor: Colors.deepPurpleAccent,
                    RapColor: Colors.white,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
