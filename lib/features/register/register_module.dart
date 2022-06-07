import 'package:potter_trunfo/features/register/data/data_sources/register_remote_data_source.dart';
import 'package:potter_trunfo/features/register/data/repositories/register_repository.dart';
import 'package:potter_trunfo/features/register/domain/use_cases/register_with_credentials_use_case.dart';
import 'package:potter_trunfo/features/register/view/controller/register_controller.dart';
import 'package:potter_trunfo/features/register/view/screen/register_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends Module {
  
  @override
  List<Bind> get binds => [
        Bind<RegisterRemoteDataSource>((i) => ApiRegisterRemoteDataSource()),
        Bind<RegisterRepository>((i) => DefaultRegisterRepository()),
        Bind<RegisterWithCredentialsUseCase>(
            (i) => DefaultRegisterWithCredentialsUseCase()),
        Bind<RegisterController>((i) => RegisterController())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context,args) =>  RegisterScreen())
      ];
}