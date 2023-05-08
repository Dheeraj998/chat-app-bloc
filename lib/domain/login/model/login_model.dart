import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class Login with _$Login {
  const factory Login(
      {@JsonKey(name: 'username') String? userName,
      @JsonKey(name: 'fullname') String? fullName}) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
