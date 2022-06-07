import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xFF237A00), Color(0xFF003B7A)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              SizedBox(
                height: 150,
                width: 150,
                child: DefaultTextStyle(
                    style: TextStyle(
                      color: AppColors.primarywhite,
                        fontFamily: GoogleFonts.patrickHand().fontFamily,
                        fontSize: 24),
                    child: AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText("Welcome to Potter Trunfo!"),
                      TyperAnimatedText("You're the Chosen One!!"),
                      TyperAnimatedText("Now, choose your house, pick"),
                      TyperAnimatedText("your character and duel against"),
                      TyperAnimatedText("your"),
                      TyperAnimatedText("opponent!"),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
