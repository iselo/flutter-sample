import 'form_field_validator.dart';

final class PasswordValidator implements FormFieldValidator<String> {
  const PasswordValidator();

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }
}
