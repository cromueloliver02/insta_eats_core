import 'package:cloud_firestore/cloud_firestore.dart' as firestore;

import 'package:insta_eats_core/src/core/error/exceptions/network_exception.dart';
import 'package:insta_eats_core/src/core/error/exceptions/server_exception.dart';
import 'package:insta_eats_core/src/core/utils/firebase_codes.dart';

class ErrorUtils {
  const ErrorUtils._();

  static const String kInvalidImageCode = 'invalid_image';

  static Exception handleFirebaseException(
    firestore.FirebaseException error, {
    required StackTrace stackTrace,
  }) {
    if (error.code == FirebaseErrorCode.networkRequestFailed) {
      return NetworkException(
        error,
        stackTrace: error.stackTrace ?? stackTrace,
        message: error.message ?? NetworkException.defaultMessage,
      );
    }

    return ServerException(
      error.code,
      error,
      stackTrace: error.stackTrace ?? stackTrace,
      message: error.message ?? ServerException.defaultMessage,
    );
  }
}
