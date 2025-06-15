import 'package:insta_eats_core/src/core/error/app_error.dart';

abstract interface class ErrorInfo {
  AppError generateError();
}
