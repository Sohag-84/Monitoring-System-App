import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'date_range_state.dart';

class DateRangeCubit extends Cubit<DateRangeState> {
  DateRangeCubit() : super(DateRangeState());

  void setFromDate(DateTime date) {
    emit(state.copyWith(fromDate: date));
  }

  void setToDate(DateTime date) {
    emit(state.copyWith(toDate: date));
  }

  bool isValidRange() {
    if (state.fromDate == null || state.toDate == null) return false;
    return !state.toDate!.isBefore(state.fromDate!);
  }

  void search() {
    if (!isValidRange()) {
      print("Invalid date range");
      return;
    }

    print(" From: ${state.fromDate}");
    print("To: ${state.toDate}");
  }
}
