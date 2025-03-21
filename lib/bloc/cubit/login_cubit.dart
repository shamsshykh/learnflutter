import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:learnflutter/model/LoginSuccessModel.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());


  _loginRequest(){
    emit(LoginLoading());
    // login api call
    // after login api call will give you success Response
    try {
      LoginSuccessModel loginSuccessModel = LoginSuccessModel(
        success: "Success",
        code: "200",
      ); // dummy api response
      emit(LoginSuccess(loginSuccessModel: loginSuccessModel));
    } catch (e) {
      emit(LoginError(e.toString()));
    }
  }

  _forgotRequest(){

  }


}
