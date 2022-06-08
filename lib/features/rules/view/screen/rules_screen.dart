import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/Hogwarts.png"),
              opacity: 0.4,
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(children: [
            Container(
              height: 310,
              width: 240,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/logo.app.png"),
                ),
              ),
            ),
            Container(
              height: 460,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "How to Play:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: GoogleFonts.patrickHand().fontFamily,
                          fontSize: 30,
                          color: AppColors.primarywhite,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "> Choose your House for start",
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> A lot of cards will be able to you",
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> Pick one character to iniciate the game",
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> Each opponent chooses one characteristic per round",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> Choose one characteristic of the card",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "(ex: Specie)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> Compare the chosen characteristic with your opponent",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "> The strongest characteristic win the round",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "and gets one point on the counter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 22,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Characteristic's Power:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: GoogleFonts.patrickHand().fontFamily,
                          fontSize: 30,
                          color: AppColors.primarywhite,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "* SPECIE: Human > Other Condition",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 20,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "* HOGWARTS STUDENT: Yes > No",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 20,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "* ALIVE: Yes > No",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 20,
                        color: AppColors.primarywhite,
                      ),
                    ),
                    Text(
                      "* HOGWARTS STAFF: Yes > No",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 20,
                        color: AppColors.primarywhite,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
