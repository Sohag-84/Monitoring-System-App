part of 'radio_button_cubit.dart';

class RadioButtonState extends Equatable {
  final String selectedOption;
  final String selectSortOption;
  const RadioButtonState({
    required this.selectedOption,
    required this.selectSortOption,
  });

  RadioButtonState copyWith({
    String? selectedOption,
    String? selectSortOption,
  }) {
    return RadioButtonState(
      selectedOption: selectedOption ?? this.selectedOption,
      selectSortOption: selectSortOption ?? this.selectSortOption,
    );
  }

  @override
  List<Object> get props => [selectedOption, selectSortOption];
}
