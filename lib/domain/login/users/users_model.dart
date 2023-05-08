import 'package:chat_app_bloc/domain/login/model/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UsersModel {
  @JsonKey(name: 'users')
  List<Login>? users;

  UsersModel({this.users});

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return _$UsersModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}
