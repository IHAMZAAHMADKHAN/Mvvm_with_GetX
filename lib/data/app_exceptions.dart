// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String tostring() {
    return '$_message : $_prefix';
  }
}

class internetException extends AppExceptions {
  internetException([String? message]) : super(message, 'No Internet');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Server Error');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message])
    : super(message, 'Request Timeout');
}

/// Thrown when the API endpoint is not found (404)
class NotFoundException extends AppExceptions {
  NotFoundException([String? message]) : super(message, 'Not Found');
}

/// Thrown when user is not authorized (401/403)
class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message]) : super(message, 'Unauthorized');
}

/// Thrown when the request body or params are invalid (400)
class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, 'Bad Request');
}

/// Thrown when there is no data returned
class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
    : super(message, 'Error During Communication');
}
