class ResponseException implements Exception {
  String cause;

  ResponseException(this.cause);
}
