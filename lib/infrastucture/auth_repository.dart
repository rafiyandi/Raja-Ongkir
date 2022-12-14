import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:learn_bloc/domain/auth/model/login_request.dart';
import 'package:learn_bloc/domain/auth/model/login_response.dart';

class AuthRepository {
  Dio _dio = Dio();
  Future<Either<String, LoginResponse>> SignInUserWithEmailAndPassword({
    required LoginRequest loginRequest,
  }) async {
    Response _response;

    try {
      _response = await _dio.post("https://reqres.in/api/login",
          data: loginRequest.toJson());

      LoginResponse _loginResp = LoginResponse.fromJson(_response.data);
      return right(_loginResp);
    } on DioError catch (e) {
      print(e.response!.statusCode);
      String errorMessage = e.response!.data.toString();

      //NOTE: jika ingin membuat secara manual satu persatu
      // if (e.type == DioErrorType.response) {
      //   if (e.response!.statusCode == 400) {
      //     errorMessage = "Email atau password salah";
      //   }
      // }

      switch (e.type) {
        case DioErrorType.connectTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.sendTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.receiveTimeout:
          // TODO: Handle this case.
          break;
        case DioErrorType.response:
          // TODO: Handle this case.
          errorMessage = e.response!.data['error'];
          break;
        case DioErrorType.cancel:
          // TODO: Handle this case.
          break;
        case DioErrorType.other:
          // TODO: Handle this case.
          break;
      }
      return left(errorMessage);
    }
  }
}
