import 'package:get/get.dart';

class RestClient extends GetConnect {
  final String _backendBaseUrl = 'https://vakinhaburguer.cloudns.nz';
  //final String _backendBaseUrl = 'http://localhost:8080';
  //final String _backendBaseUrl = 'https://34.207.128.1/';
  //final String _backendBaseUrl = 'https://54.89.23.187/';

  RestClient() {
    httpClient.baseUrl = _backendBaseUrl;
    httpClient.timeout = const Duration(seconds: 10);
  }
}

class RestClientException implements Exception {
  final int? code;
  final String message;

  RestClientException(this.message, {this.code});

  @override
  String toString() => 'RestClientException(code: $code, message: $message)';
}
