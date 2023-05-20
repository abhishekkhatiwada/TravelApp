import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelapp/cubit/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitAppState()) {
    emit(WelcomeAppState());
  }
}
