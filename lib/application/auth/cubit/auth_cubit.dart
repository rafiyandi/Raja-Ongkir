import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_bloc/domain/auth/model/login_request.dart';
import 'package:learn_bloc/domain/auth/model/login_response.dart';
import 'package:learn_bloc/infrastucture/auth_repository.dart';
import 'package:meta/meta.dart';
import 'package:learn_bloc/utils/constants.dart' as constants;

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  AuthRepository _authRepository = AuthRepository();

  void signInUser(LoginRequest loginRequest) async {
    emit(AuthLoading());

    try {
      final _data = await _authRepository.SignInUserWithEmailAndPassword(
          loginRequest: loginRequest);

      //NOTE : Untuk melakukan filter data error dan sucses apa yang harus dilakukan
      _data.fold(
        (l) => emit(AuthError(l)),
        (r) => emit(AuthLoginSuccess(r)),
      );
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  void saveUserToLocal(LoginResponse data) async {
    emit(AuthLoading());
    try {
      await GetStorage().write(constants.USER_LOCAL_KEY, jsonEncode(data));
      emit(AuthSuccesSaveData());
    } catch (e) {
      AuthError(e.toString());
    }
  }

  //apakah user sudah ada di aplikasi
  void loadUserFromLocal() async {
    emit(AuthLoading());
    try {
      final _data = await GetStorage().read(constants.USER_LOCAL_KEY);
      final _result = LoginResponse.fromJson(jsonDecode(_data));
      emit(AuthLoginSuccess(_result));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
