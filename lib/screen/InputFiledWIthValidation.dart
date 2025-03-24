import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnflutter/bloc/bloc/login_bloc.dart';
import 'package:learnflutter/model/LoginRequestModel.dart';

class InputFiledWithValidation extends StatelessWidget {
  InputFiledWithValidation({super.key});

  final GlobalKey<FormState> _fromKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocSelector<LoginBloc, LoginState, int>(
        selector: (state) => state.hashCode,
        builder: (context, state) {
          return BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginInitialState) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Form(
                    key: _fromKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        AppTextFiled(
                          placeHolder: "Enter email",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'filed is empty';
                            } else if (!value.contains("@")) {
                              return 'incorrect email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        AppTextFiled(
                          placeHolder: "Enter Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'filed is empty';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            if (_fromKey.currentState!.validate()) {
                              var snackBar = SnackBar(content: Text("Success"));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  snackBar);
                              var loginRequest = LoginRequestModel(
                                email: "email",
                                password: "12",
                              );
                              BlocProvider.of<LoginBloc>(context).add(
                                LoginRequestEvent(
                                    loginRequestModel: loginRequest),
                              );

                              context.read<LoginBloc>().add(LoginRequestEvent(
                                  loginRequestModel: loginRequest));
                            } else {
                              SnackBar(content: Text("Failed"));
                            }
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              else if (state is LoginLoadingState) {
                return CircularProgressIndicator();
              } else if (state is LoginSuccessState) {
                return Center(child: Text("Login User"));
              } else if (state is LoginErrorState) {
                return Center(child: Text(state.errorMessage));
              }
              return Container();
            },
          );
        },
      ),
    );
  }
}

class AppTextFiled extends StatelessWidget {
  final String placeHolder;

  final FormFieldValidator<String> validator;

  const AppTextFiled({
    super.key,
    required this.placeHolder,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      style: TextStyle(color: Colors.black, fontSize: 15),
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Color(0xFF8F8F9E)),
        hintText: placeHolder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
