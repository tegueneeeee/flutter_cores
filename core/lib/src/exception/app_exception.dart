sealed class AppException implements Exception {
  const AppException(this.message);

  final String message;
}

class RemoteConfigException extends AppException {
  const RemoteConfigException(super.message);
}

class UnknownException extends AppException {
  const UnknownException() : super('Unknown error occurred');
}
