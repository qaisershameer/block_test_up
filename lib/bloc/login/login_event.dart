
import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];

}

class LoginUserEvent extends LoginEvent{
  final String userName;
  final String password;

  LoginUserEvent({required this.userName, required this.password});
}