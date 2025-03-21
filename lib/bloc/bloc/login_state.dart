part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

final class LoginInitialState extends LoginState {
  @override
  List<Object> get props => [];
}

final class LoginLoadingState extends LoginState {
  @override
  List<Object> get props => [];
}

final class LoginSuccessState extends LoginState {

  final LoginSuccessModel loginSuccessModel;

  const LoginSuccessState({required this.loginSuccessModel});

  @override
  List<Object> get props => [loginSuccessModel];

}

final class LoginErrorState extends LoginState {
  final String errorMessage;

  const LoginErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}