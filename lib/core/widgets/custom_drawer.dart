import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/features/home/view/screen/home_screen.dart';
import 'package:potter_trunfo/features/rules/view/screen/rules_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DrawerStyle(),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade700),
        width: 300,
        height: 700,
        child: Stack(
          children: <Widget>[
            BackdropFilter(
              filter: ImageFilter.blur(),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/fundo.drawer1.png"),
                      fit: BoxFit.fill,
                      opacity: 0.4),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 80),
                Container(
                  height: 150,
                  width: 140,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/logo.app.png"),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RulesScreen(),
                            ),
                          );
                        },
                        child: Text("How to Play",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.primarywhite,
                                fontFamily:
                                    GoogleFonts.patrickHand().fontFamily,
                                fontSize: 24))),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Text("Home",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.primarywhite,
                                fontFamily:
                                    GoogleFonts.patrickHand().fontFamily,
                                fontSize: 24))),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RulesScreen(),
                            ),
                          );
                        },
                        child: Text("Logout",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.primarywhite,
                                fontFamily:
                                    GoogleFonts.patrickHand().fontFamily,
                                fontSize: 24))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerStyle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width * 0.0016667, size.height * 0.0038462);
    path.quadraticBezierTo(size.width * 0.5689833, size.height * -0.0173974,
        size.width * 0.9057167, size.height * 0.0713205);
    path.cubicTo(
        size.width * 0.6817333,
        size.height * 0.0621538,
        size.width * 0.7026167,
        size.height * 0.1710513,
        size.width * 0.7104000,
        size.height * 0.1899103);
    path.cubicTo(
        size.width * 0.7331500,
        size.height * 0.2209487,
        size.width * 0.7625167,
        size.height * 0.2545897,
        size.width * 0.8666667,
        size.height * 0.2653846);
    path.quadraticBezierTo(size.width * 0.8051167, size.height * 0.3155385,
        size.width * 0.7133333, size.height * 0.3051282);
    path.quadraticBezierTo(size.width * 0.7225500, size.height * 0.4137949,
        size.width * 0.8683333, size.height * 0.4589744);
    path.quadraticBezierTo(size.width * 0.8466500, size.height * 0.5119359,
        size.width * 0.7200000, size.height * 0.5000000);
    path.quadraticBezierTo(size.width * 0.7419167, size.height * 0.6216282,
        size.width * 0.8600000, size.height * 0.5730769);
    path.quadraticBezierTo(size.width * 0.8304333, size.height * 0.6404359,
        size.width * 0.7216667, size.height * 0.6628205);
    path.quadraticBezierTo(size.width * 0.6793833, size.height * 0.7500769,
        size.width * 0.8616667, size.height * 0.8064103);
    path.quadraticBezierTo(size.width * 0.8348500, size.height * 0.8455256,
        size.width * 0.7300000, size.height * 0.8423077);
    path.quadraticBezierTo(size.width * 0.7200333, size.height * 0.9101026,
        size.width * 0.8633333, size.height * 0.9205128);
    path.quadraticBezierTo(size.width * 0.6421167, size.height * 1.0130000,
        size.width * 0.0033333, size.height * 0.9961538);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
