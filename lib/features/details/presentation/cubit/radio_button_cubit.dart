import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'radio_button_state.dart';

class RadioButtonCubit extends Cubit<RadioButtonState> {
  RadioButtonCubit()
    : super(
        RadioButtonState(
          selectedOption: "Data View",
          selectSortOption: "Today's Data",
        ),
      );

  void selectOption({required String newOption}) {
    emit(state.copyWith(selectedOption: newOption));
  }

  void selectSortOption({required String newSortOption}) {
    emit(state.copyWith(selectSortOption: newSortOption));
  }
}
