import 'package:design_system_pkg/src/utils/validators_util.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const validationMessage = 'Requerido';

  group('validateNonNull', () {
    test('Returns validation message', () {
      expect(validateNonNull(null), equals(validationMessage));
    });

    test('Returns null', () {
      expect(validateNonNull(validationMessage), isNull);
    });
  });

  group('validateNonEmpty', () {
    const emptyString = '';
    const stringWithLeadingWhitespace = ' String';
    const stringWithTrailingWhitespace = 'String ';
    const nonEmptyString = 'String';

    test('Returns validation message', () {
      expect(validateNonEmpty(emptyString), equals(validationMessage));
    });

    test('Returns null due to string with leading whitespace', () {
      expect(validateNonEmpty(stringWithLeadingWhitespace), isNull);
    });

    test('Returns null due to string with trailing whitespace', () {
      expect(validateNonEmpty(stringWithTrailingWhitespace), isNull);
    });

    test('Returns null due to non-empty string', () {
      expect(validateNonEmpty(nonEmptyString), isNull);
    });
  });
}
