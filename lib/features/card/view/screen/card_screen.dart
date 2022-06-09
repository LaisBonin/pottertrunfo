import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/features/card/view/controller/card_controller.dart';

class CardScreen extends StatefulWidget {
  final String? house;

  const CardScreen({Key? key, this.house}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  void addPoint(int points) {
    points++;
  }

  void removePoints(int points) {
    points--;
  }

  final _controller = Modular.get<CardController>();
  int _currentIndex = 0;

  @override
  void initState() {
    _controller.getHouse(widget.house!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Color(0xFF237A00), Color(0xFF003B7A)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Observer(
          builder: (_) {
            final characters = _controller.characteresList;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 477.0,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    items: characters.map((char) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                            width: 320,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xFFFFCE1F), width: 5.0),
                              color: AppColors.primarywhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image:
                                                  NetworkImage(char.image!),),),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xFFD9D9D9)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Name:",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                      Text(char.name!,
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xFFD9D9D9)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Specie:",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                      Text(char.species.toString(),
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xFFD9D9D9)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Hogwarts Student:",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontFamily:
                                                    GoogleFonts.patrickHand()
                                                        .fontFamily,
                                                color: Colors.black)),
                                        Text(char.hogwartsStudent.toString(),
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontFamily:
                                                    GoogleFonts.patrickHand()
                                                        .fontFamily,
                                                color: Colors.black)),
                                      ]),
                                ),
                                Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xFFD9D9D9)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Alive:",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                      Text(char.alive.toString(),
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      color: Color(0xFFD9D9D9)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Hogwarts Staff:",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                      Text(char.hogwartsStaff.toString(),
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily:
                                                  GoogleFonts.patrickHand()
                                                      .fontFamily,
                                              color: Colors.black)),
                                    ],
                                  ),
                                )
                              ],
                            ));
                      });
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {});
                          removePoints;
                        },
                        icon: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Center(
                            child: Text(
                              "-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 26,
                                fontFamily: GoogleFonts.patrickHand().fontFamily,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {});
                          addPoint;
                        },
                        icon: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: map<Widget>(cardList, (index, url) {
                      //     return Container(
                      //       width: 10.0,
                      //       height: 10.0,
                      //       margin: const EdgeInsets.symmetric(
                      //           vertical: 10.0, horizontal: 2.0),
                      //       decoration: BoxDecoration(
                      //         shape: BoxShape.circle,
                      //         color: _currentIndex == index
                      //             ? Colors.grey
                      //             : HelpTheme.helpYellow,
                      //       ),
                      //     );
                      //   }),
                      // ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
