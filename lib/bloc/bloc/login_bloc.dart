import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learnflutter/model/LoginRequestModel.dart';
import 'package:learnflutter/model/LoginSuccessModel.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {

    on<LoginRequestEvent>((event, emit) {
      emit(LoginLoadingState());
      // login api call
      // after login api call will give you success Response
      try {
        LoginSuccessModel loginSuccessModel = LoginSuccessModel(
          success: "Success",
          code: "200",
        ); // dummy api response
        emit(LoginSuccessState(loginSuccessModel: loginSuccessModel));
      } catch (e) {
        emit(LoginErrorState(e.toString()));
      }
    });

    on<ForgotRequestEvent>((event, emit) {


    });
  }
}
