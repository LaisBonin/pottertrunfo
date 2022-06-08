
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

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
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
               fit: FlexFit.tight,
                child: Row(
                  children: const [
                    Text("Escolha sua casa"),
                  ],
                ),
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Modular.to.pushNamed('/card/',arguments: 'slytherin');
                          },
                          icon: Image.asset("lib/assets/brasao.sonserina.png"),
                          iconSize: 80,),
                      IconButton(
                          onPressed: () {
                            Modular.to.navigate('/card/gryffindor');
                          },
                          icon: Image.asset("lib/assets/brasao.grifinoria.png"),
                          iconSize: 80,),
                    ],
                  ),
                ],
              ),
              Column(
                
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Modular.to.navigate('/card/ravenclaw');
                          },
                          icon: Image.asset("lib/assets/brasao.corvinal.png"),
                          iconSize: 80,
                          ),
                      IconButton(
                          onPressed: () {
                            Modular.to.navigate('/card/hufflepuff');
                          },
                          icon: Image.asset("lib/assets/logo.lufalufa.jpg"),
                          iconSize: 80,),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
