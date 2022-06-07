import 'package:potter_trunfo/core/adapters/remote_client/remote_client.dart';
import 'package:potter_trunfo/core/constants/api_routes.dart';
import 'package:potter_trunfo/core/generics/resource.dart';
import 'package:potter_trunfo/features/register/data/register_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class RegisterRemoteDataSource {
  Future<Resource<Map<String, dynamic>, RegisterError>> registerUser(
      String email, String password);
}

class ApiRegisterRemoteDataSource implements RegisterRemoteDataSource {
  final _remoteClient = Modular.get<RemoteClient>();

  @override
  Future<Resource<Map<String, dynamic>, RegisterError>> registerUser(
      String email, String password) async {
    final response = await _remoteClient.post(
      ApiRoutes.registerApiRoute,
      {"email": email, "password": password},
    );
    if (response.statusCode != 201) {
      return Resource.failed(error: RegisterError.invalidCredentials);
    }
    return Resource.success(data: response.data);
  }
}