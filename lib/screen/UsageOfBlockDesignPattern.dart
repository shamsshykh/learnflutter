// make sure you install the plugin of BLOC
// bloc = Business logic component
// Bloc state management library and it has 3 component


// event : action that triggered on UI
// block : received the events , processed them and return the state
// state : refer to the current state of the app


// block with with streams
// it's an  asynchronous way to handle data

// emit the state to the stream
// widget that listen to the stream
// Block Builder and Block Consumer and Block listener
 // block builder return the widget like help for update the UI
// block listener not return anything just use for listener like show snakbar, navigation etc.
// block consumer give you both access use both combines,
// like give you listener for listener and builder for build the UI

// read and watch => read same as provider and watch same as listener

// block selector
// listen the specific state changes not the whole state
// listen the subset of state
// on every state change the whole ui won't change , performance optimization

// cubit is light weight state management solution subset of bloc
// same as the bloc received the function , process them return the state but it received the functions not the events


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnflutter/bloc/bloc/login_bloc.dart' show LoginBloc;
import 'package:learnflutter/screen/InputFiledWIthValidation.dart';


class UsageOfBlockDesignPattern extends StatelessWidget {
  const UsageOfBlockDesignPattern({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
      ],
      child: MaterialApp(
        home: InputFiledWithValidation(),
      ),
    );
  }
}
