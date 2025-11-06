import 'form_field_validator.dart';

final class PasswordValidator implements FormFieldValidator<String> {
  const PasswordValidator();

  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}
