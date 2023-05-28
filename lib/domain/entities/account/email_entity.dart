import 'package:freezed_annotation/freezed_annotation.dart';


part 'email_entity.freezed.dart';

@freezed
class EmailEntity with _$EmailEntity {
  const factory EmailEntity(
    String? value,
  ) = _EmailEntity;

  const EmailEntity._();

  factory EmailEntity.create(String value) => EmailEntity(value);

  factory EmailEntity.pure() => const EmailEntity(null);

  bool get valid => true;

  // String? get errorText {
  //   if (_isEmail()) {
  //     return null;
  //   } else if (value.isNullOrEmpty) {
  //     return AppText.value.emailRequired.toString();
  //   } else {
  //     return AppText.value.emailInvalid.toString();
  //   }
  // }

  // bool _isEmail() => RegExp(RegexConstants.email).hasMatch(value ?? '');
}
