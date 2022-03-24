import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/services.dart';
part 'c_template_state.dart';

// Good introduction to Cubit:
// https://resocoder.com/2020/08/04/flutter-bloc-cubit-tutorial/

// Provide a cubit: BlocProvider(
//   create: (context) => CTemplateCubit(),
//   child: ...,
// ),
// Get the Cubit in the Template:
// BlocBuilder<WeatherCubit, WeatherState>(
//   builder: (context, state) {
//     if (state is WeatherInitial) {
//       return buildInitialInput();
//     } else if (state is WeatherLoading) {
//       return buildLoading();
//     } else if (state is WeatherLoaded) {
//       return buildColumnWithData(state.weather);
//     } else {
//       return buildInitialInput();
//     }
//   },
// ),

class CTemplateCubit extends Cubit<CTemplateState> {
  CTemplateCubit() : super(CTemplateInitial(name: 'placeholder'));

  // Add a method that changes the state
  Future<void> getState(String name) async {
    try {
      emit(CTemplateLoading());
      await Future.delayed(const Duration(seconds: 2), () {});
      emit(CTemplateLoaded("new_value"));
    } on Exception {
      emit(CTemplateError("Something went wrong..."));
    }
  }
}
