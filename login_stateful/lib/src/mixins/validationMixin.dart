/** Actúa como una especie de interface */

mixin ValidationMixin {
  String? validateEmail(value) {
    if (!value.toString().contains('@')) {
      return 'Please enter a valid email';
    }
  }

  String? validatePassword(value) {
    if (value!.length <= 4) {
      return 'Please enter a valid password';
    }
  }
}
