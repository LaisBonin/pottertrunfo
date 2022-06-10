import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/core/widgets/custom_drawer.dart';
import 'package:potter_trunfo/features/card/view/controller/card_controller.dart';

class CardScreen extends StatefulWidget {
  final String? house;

  const CardScreen({Key? key, this.house}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int score = 0;

  void addPoints() {
    score++;
  }

  void removePoints() {
    score--;
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
        drawer: CustomDrawer(),
        backgroundColor: Colors.transparent,
        body: Observer(
          builder: (_) {
            final characters = _controller.characteresList;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Modular.to.pushNamed('/home/');
                        },
                        icon: Icon(Icons.arrow_back_rounded),
                        iconSize: 40,
                        color: AppColors.primarywhite,
                      ),
                      SizedBox(width: 60),
                      Container(
                        height: 140,
                        width: 120,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/assets/logo.app.png"))),
                      ),
                    ],
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 560.0,
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
                            width: 340,
                            height: 583,
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
                                      height: 230,
                                      width: 163,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          image: (char.image!.isNotEmpty)
                                              ? DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image:
                                                      NetworkImage(char.image!))
                                              : const DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: AssetImage(
                                                      "lib/assets/foto_personagem.png"))),
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: IconButton(
                          iconSize: 40,
                          onPressed: () {
                            setState(() {
                              removePoints();
                            });
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          color: AppColors.primarywhite,
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Color(0xFFFFCE1F),
                            width: 4,
                          ),
                        ),
                        child: Text(
                          '$score',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.patrickHand().fontFamily,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: IconButton(
                          iconSize: 40,
                          onPressed: () {
                            setState(() {
                              addPoints();
                            });
                          },
                          icon: Icon(
                            Icons.check,
                            color: Colors.black,
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
