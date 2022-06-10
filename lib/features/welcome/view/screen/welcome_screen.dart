import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/features/home/home_module.dart';
import 'package:potter_trunfo/features/home/view/screen/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.6,
              image: AssetImage("lib/assets/fundo.welcome.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 190,
                  width: 420,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.6), borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.patrickHand().fontFamily,
                              fontSize: 26),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText("Welcome to Potter Trunfo!",
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 160)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.patrickHand().fontFamily,
                              fontSize: 26),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText("You're the Chosen One!!",
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 160)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.patrickHand().fontFamily,
                              fontSize: 26),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText("Now, choose your house, pick",
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 160)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.patrickHand().fontFamily,
                              fontSize: 26),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText("your character and duel against",
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 160)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.patrickHand().fontFamily,
                              fontSize: 26),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TyperAnimatedText("your opponent!",
                                  textAlign: TextAlign.center,
                                  speed: Duration(milliseconds: 160)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/image.welcome.gif"),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primarygreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Modular.to.pushNamed('/rules/');
                  },
                  child: Text(
                    "How to Play",
                    style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 26,
                        color: AppColors.primarywhite),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.primarygreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: () {
                    Modular.to.pushNamed('/home/');
                  },
                  child: Text(
                    "Let's Play!",
                    style: TextStyle(
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 26,
                        color: AppColors.primarywhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
