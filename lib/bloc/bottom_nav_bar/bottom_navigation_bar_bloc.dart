/* 
    Created by Bahromjon Po'lat
    Created at 26.08.2022 18:10
*/

import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc extends Bloc<BottomNavigationBarEvent, int> {
  BottomNavigationBarBloc() : super(0) {
    on<BottomBarChanged>((event, emit) => emit(event.index));
  }
}
