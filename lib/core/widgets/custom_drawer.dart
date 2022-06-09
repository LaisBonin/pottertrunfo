import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/features/home/view/screen/home_screen.dart';
import 'package:potter_trunfo/features/login/view/screen/login_screen.dart';
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
                      image: AssetImage("lib/assets/fundo.drawer.png"),
                      fit: BoxFit.fill,
                      opacity: 0.3),
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Container(
                    height: 210,
                    width: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/assets/logo.app.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    const SizedBox(width: 50),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                      onPressed: () {
                        Modular.to.pushNamed('/rules/');
                      },
                      child: Text(
                        "How to Play",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.primarywhite,
                            fontFamily: GoogleFonts.patrickHand().fontFamily,
                            fontSize: 24),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                        onPressed: () {
                          Modular.to.pushNamed('/home/');
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
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/assets/pomo.icon.png"))),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
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

    path.moveTo(size.width*0.0016667,size.height*0.0037975);
    path.quadraticBezierTo(size.width*0.6471833,size.height*-0.0017595,size.width*0.8050000,size.height*0.0544304);
    path.cubicTo(size.width*0.8868833,size.height*0.0843165,size.width*0.8949500,size.height*0.1300506,size.width*0.8983333,size.height*0.1569620);
    path.cubicTo(size.width*0.8979500,size.height*0.1906709,size.width*0.8717000,size.height*0.2103038,size.width*0.8400000,size.height*0.2253165);
    path.quadraticBezierTo(size.width*0.8195667,size.height*0.2368608,size.width*0.7733333,size.height*0.2367089);
    path.quadraticBezierTo(size.width*0.8849500,size.height*0.1791899,size.width*0.8150000,size.height*0.1468354);
    path.cubicTo(size.width*0.7725000,size.height*0.1298987,size.width*0.7510000,size.height*0.1447342,size.width*0.7266667,size.height*0.1670886);
    path.cubicTo(size.width*0.6971333,size.height*0.2012025,size.width*0.7171667,size.height*0.2301266,size.width*0.7600000,size.height*0.2582278);
    path.cubicTo(size.width*0.8005667,size.height*0.3136456,size.width*0.8145167,size.height*0.3347975,size.width*0.9083333,size.height*0.2987342);
    path.quadraticBezierTo(size.width*0.9275333,size.height*0.3402785,size.width*0.8800000,size.height*0.3632911);
    path.quadraticBezierTo(size.width*0.8289500,size.height*0.3915316,size.width*0.7800000,size.height*0.3797468);
    path.cubicTo(size.width*0.7194167,size.height*0.3678228,size.width*0.7275667,size.height*0.4355823,size.width*0.7450000,size.height*0.4481013);
    path.cubicTo(size.width*0.7643833,size.height*0.4845063,size.width*0.7880833,size.height*0.4859114,size.width*0.8100000,size.height*0.4886076);
    path.cubicTo(size.width*0.8575167,size.height*0.4930633,size.width*0.8758500,size.height*0.4791139,size.width*0.8916667,size.height*0.4632911);
    path.cubicTo(size.width*0.9666500,size.height*0.5206582,size.width*0.9098833,size.height*0.5658987,size.width*0.8850000,size.height*0.5797468);
    path.cubicTo(size.width*0.8501167,size.height*0.6015570,size.width*0.7651000,size.height*0.5578734,size.width*0.7516667,size.height*0.6025316);
    path.quadraticBezierTo(size.width*0.7346667,size.height*0.6493924,size.width*0.7433333,size.height*0.7000000);
    path.quadraticBezierTo(size.width*0.7495167,size.height*0.7419494,size.width*0.8400000,size.height*0.7202532);
    path.quadraticBezierTo(size.width*0.8816667,size.height*0.6988987,size.width*0.8583333,size.height*0.6455696);
    path.quadraticBezierTo(size.width*0.9295167,size.height*0.6801139,size.width*0.9200000,size.height*0.7493671);
    path.quadraticBezierTo(size.width*0.9017167,size.height*0.8146329,size.width*0.7531833,size.height*0.8207468);
    path.quadraticBezierTo(size.width*0.6773500,size.height*0.8376203,size.width*0.8800000,size.height*0.8898734);
    path.quadraticBezierTo(size.width*0.7453000,size.height*1.0050127,size.width*0.0033333,size.height*0.9987342);


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
