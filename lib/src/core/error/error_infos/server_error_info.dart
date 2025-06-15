import 'package:insta_eats_core/src/core/error/app_error.dart';
import 'package:insta_eats_core/src/core/error/error_infos/error_info.dart';
import 'package:insta_eats_core/src/core/error/failures/failure.dart';
import 'package:insta_eats_core/src/core/utils/firebase_codes.dart';

class ServerErrorInfo implements ErrorInfo {
  final ServerFailure failure;

  const ServerErrorInfo(this.failure);

  @override
  AppError generateError() {
    final String statusCode = failure.exception.statusCode;

    if (statusCode == FirebaseErrorCode.invalidLoginCredentials) {
      return AppError(
        title: 'Authentication Failed',
        message: 'Incorrect email or password.',
        failure: failure,
      );
    }

    if (statusCode == FirebaseErrorCode.tooManyRequests) {
      return AppError(
        title: 'Too Many Requests',
        message: failure.exception.message,
        failure: failure,
      );
    }

    return AppError(
      title: ServerFailure.title,
      message: failure.exception.message,
      failure: failure,
    );
  }
}
