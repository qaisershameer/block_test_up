import 'package:bloc/bloc.dart';
import 'package:block_test/bloc/login/login_event.dart';
import 'package:block_test/bloc/login/login_state.dart';
import 'package:block_test/data/repositories/auth_repo.dart';
import 'package:flutter/cupertino.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{

  final _authRepo = AuthRepo();

  LoginBloc() : super(LoginState(isLoading: false)){

    on<LoginUserEvent>(_loginUser);

  }

  /// [Login] - Function to login the user
  Future<void> _loginUser(LoginUserEvent event, Emitter<LoginState> emit) async {
    try {

      /// Start Loading
      emit(state.copyWith(isLoading: true));

      // login user
      await _authRepo.loginUser(event.userName, event.password);

      print('Success');

      // stop loading
      emit(state.copyWith(isLoading: false));

    } catch (e) {
      debugPrint('Error while login: $e');
    }
  }

}