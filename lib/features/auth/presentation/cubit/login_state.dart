part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool isPasswordVisible;
  const LoginState({this.isPasswordVisible = false});

  LoginState copyWith({bool? isPasswordVisible}) {
    return LoginState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object> get props => [isPasswordVisible];
}
