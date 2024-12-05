/// Validates required but nullable [value].
String? validateNonNull(Object? value) => value == null ? 'Requerdio' : null;

/// Validates required but nullable or empty [value].
String? validateNonEmpty(String? value) =>
    value?.trim().isEmpty ?? true ? 'Requerido' : null;
