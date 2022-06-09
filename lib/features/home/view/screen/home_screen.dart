import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:potter_trunfo/core/design/app_colors.dart';
import 'package:potter_trunfo/core/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  // final _controller = Modular.get<HomeController>();
  HomeScreen({Key? key}) : super(key: key);

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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    IconButton(
                      color: AppColors.primarywhite,
                      onPressed: () {},
                      icon: Icon(
                        Icons.volume_up,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 70),
                    Container(
                      height: 150,
                      width: 140,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/logo.app.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Choose Your House",
                  style: TextStyle(
                      fontFamily: GoogleFonts.patrickHand().fontFamily,
                      fontSize: 28),
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Modular.to
                                .pushNamed('/card/', arguments: 'slytherin');
                          },
                          icon: Image.asset("lib/assets/brasao.sonserina.png"),
                          iconSize: 180,
                        ),
                        IconButton(
                          onPressed: () {
                            Modular.to
                                .pushNamed('/card/', arguments: 'gryffindor');
                          },
                          icon: Image.asset("lib/assets/brasao.grifinoria.png"),
                          iconSize: 180,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Modular.to
                                .pushNamed('/card/', arguments: 'ravenclaw');
                          },
                          icon: Image.asset("lib/assets/brasao.corvinal.png"),
                          iconSize: 180,
                        ),
                        IconButton(
                          onPressed: () {
                            Modular.to
                                .pushNamed('/card/', arguments: 'hufflepuff');
                          },
                          icon: Image.asset("lib/assets/logo.lufalufa.jpg"),
                          iconSize: 180,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
