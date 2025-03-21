part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();
}

final class LoginInitial extends LoginState {
  @override
  List<Object> get props => [];
}

final class LoginLoading extends LoginState {
  @override
  List<Object> get props => [];
}

final class LoginSuccess extends LoginState {

  final LoginSuccessModel loginSuccessModel;

  const LoginSuccess({required this.loginSuccessModel});

  @override
  List<Object> get props => [loginSuccessModel];

}

final class LoginError extends LoginState {
  final String errorMessage;

  const LoginError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
