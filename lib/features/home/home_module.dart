
import 'package:flutter_modular/flutter_modular.dart';

import 'view/screen/home_screen.dart';

class HomeModule extends Module {
  
  // @override
  // List<Bind> get binds => [
  //       Bind<HomeRemoteDataSource>((i) => ApiHomeRemoteDataSource()),
  //       Bind<HomeRepository>((i) => DefaultHomeRepository()),
  //       Bind<HomeWithCredentialsUseCase>(
  //           (i) => DefaultHomeWithCredentialsUseCase()),
  //       Bind<HomeController>((i) => HomeController())
  //     ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context,args) =>  HomeScreen())
      ];
}