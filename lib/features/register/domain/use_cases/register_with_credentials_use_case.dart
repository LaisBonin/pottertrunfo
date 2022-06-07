import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/register/data/register_error.dart';
import 'package:potter_trunfo/features/register/data/repositories/register_repository.dart';
import 'package:potter_trunfo/features/register/domain/entities/user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class RegisterWithCredentialsUseCase {
  Future<Resource<UserEntity, RegisterError>> registerUser(
      String email, String password);
}

class DefaultRegisterWithCredentialsUseCase
    implements RegisterWithCredentialsUseCase {
  @override
  Future<Resource<UserEntity, RegisterError>> registerUser(
      String email, String password) async {
    final _repository = Modular.get<RegisterRepository>();

    final resource = await _repository.registerUser(email, password);
    if (resource.hasError) {
      return Resource.failed(error: RegisterError.invalidCredentials);
    }
    return Resource.success(data: resource.data);
  }
}