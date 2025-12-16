part of 'radio_button_cubit.dart';

class RadioButtonState extends Equatable {
  final String selectedOption;
  const RadioButtonState({required this.selectedOption});

  RadioButtonState copyWith({String? selectedOption}) {
    return RadioButtonState(
      selectedOption: selectedOption ?? this.selectedOption,
    );
  }

  @override
  List<Object> get props => [selectedOption];
}
