part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginRequestEvent extends LoginEvent {

  final LoginRequestModel loginRequestModel;

  const LoginRequestEvent({required this.loginRequestModel});

  @override
  List<Object> get props => [loginRequestModel];

}

class ForgotRequestEvent extends LoginEvent {
  final String email;

  const ForgotRequestEvent({required this.email});

  @override
  List<Object?> get props => [email];
}
