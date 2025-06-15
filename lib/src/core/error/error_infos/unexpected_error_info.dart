import 'package:insta_eats_core/src/core/error/app_error.dart';
import 'package:insta_eats_core/src/core/error/error_infos/error_info.dart';
import 'package:insta_eats_core/src/core/error/failures/failure.dart';

class UnexpectedErrorInfo implements ErrorInfo {
  final UnexpectedFailure failure;

  const UnexpectedErrorInfo(this.failure);

  @override
  AppError generateError() {
    return AppError(
      title: UnexpectedFailure.title,
      message: failure.exception.message,
      failure: failure,
    );
  }
}
