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
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: AppColors.primarywhite,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image:
                                                  NetworkImage(char.image!))),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text("Name:",style: TextStyle(
                                            color: AppColors.primaryblue)),
                                    Text(char.name!,
                                        style: const TextStyle(
                                            color: AppColors.primarygreen)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(char.species.toString(),
                                        style: const TextStyle(
                                            color: AppColors.primarygreen)),
                                  ],
                                ),
                                Row(children: [
                                  Text(char.actor!,
                                      style: const TextStyle(
                                          color: AppColors.primarygreen)),
                                ]),
                                Row(
                                  children: [
                                    Text(char.dateOfBirth!,
                                        style: const TextStyle(
                                            color: AppColors.primarygreen)),
                                  ],
                                )
                              ],
                            ));
                      });
                    }).toList(),
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
            );
            // return ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: characters.length,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         height: 300,
            //         width: 300,
            //         child: Column(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             Text(characters[index].name!),
            //             Text(characters[index].species.toString()),
            //             Text(characters[index].actor!),
            //             Text(characters[index].dateOfBirth!),
            //           ],
            //         ),
            //       );
            //     });
          },
        ),
      ),
    );
  }
}
