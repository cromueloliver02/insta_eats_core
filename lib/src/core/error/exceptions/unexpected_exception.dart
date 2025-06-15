class UnexpectedException implements Exception {
  final String message;
  final Object error;
  final StackTrace stackTrace;

  static const String defaultMessage = 'Unexpected error occurred';

  const UnexpectedException(
    this.error, {
    required this.stackTrace,
    this.message = defaultMessage,
  });

  const UnexpectedException.empty()
    : message = '',
      error = '',
      stackTrace = StackTrace.empty;

  @override
  String toString() =>
      'UnexpectedException\n'
      'Message: $message\n'
      'Error: $error\n\n'
      'StackTrace: $stackTrace';
}
