part of 'arrow_button_cubit.dart';

class ArrowButtonState extends Equatable {
  final bool isExpanded;
  const ArrowButtonState({required this.isExpanded});

  ArrowButtonState copyWith({bool? isExpanded}) {
    return ArrowButtonState(isExpanded: isExpanded ?? this.isExpanded);
  }

  @override
  List<Object> get props => [isExpanded];
}
