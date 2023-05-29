import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_entity.freezed.dart';

@freezed
class PasswordEntity with _$PasswordEntity {
  const factory PasswordEntity(
    String? value,
  ) = _PasswordEntity;

  const PasswordEntity._();

  factory PasswordEntity.create(String value) => PasswordEntity(value);

  factory PasswordEntity.pure() => const PasswordEntity(null);

  bool get valid => true;

  // String? get errorText {
  //   if (value == null || _isPassword()) {
  //     return null;
  //   } else if (value.isNullOrEmpty) {
  //     return AppText.value.passwordRequired.toString();
  //   } else {
  //     return AppText.value.passwordInvalid.toString();
  //   }
  // }

  // bool _isPassword() => (value ?? '').length >= 8;
}
