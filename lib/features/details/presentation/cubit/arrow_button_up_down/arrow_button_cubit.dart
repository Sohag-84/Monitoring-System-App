import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'arrow_button_state.dart';

class ArrowButtonCubit extends Cubit<ArrowButtonState> {
  ArrowButtonCubit() : super(ArrowButtonState(isExpanded: true));

  void toggleExpansion() {
    emit(state.copyWith(isExpanded: !state.isExpanded));
  }
}
