class NetworkUploadException implements Exception {
  final String msg;

  NetworkUploadException({this.msg});

  @override
  String toString() {
    return "NetworkUploadException: $msg";
  }
}
