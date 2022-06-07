import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/register/data/data_sources/register_remote_data_source.dart';
import 'package:potter_trunfo/features/register/data/register_error.dart';
import 'package:potter_trunfo/features/register/domain/entities/user_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class RegisterRepository {
  Future<Resource<UserEntity, RegisterError>> registerUser(
      String email, String password);
}

class DefaultRegisterRepository implements RegisterRepository {
  final _dataSource = Modular.get<RegisterRemoteDataSource>();

  @override
  Future<Resource<UserEntity, RegisterError>> registerUser(
      String email, String password) async {
    final resource = await _dataSource.registerUser(email, password);
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final userMap = resource.data;
    final userEntity = UserEntity.fromMap(userMap!);
    return Resource.success(data: userEntity);
  }
}