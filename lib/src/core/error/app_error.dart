import 'package:flutter/widgets.dart';

import 'package:insta_eats_core/src/core/error/error_infos/network_error_info.dart';
import 'package:insta_eats_core/src/core/error/error_infos/server_error_info.dart';
import 'package:insta_eats_core/src/core/error/error_infos/unexpected_error_info.dart';
import 'package:insta_eats_core/src/core/error/failures/failure.dart';
import 'package:insta_eats_core/src/core/presentation/widgets/ite_error_dialog.dart';

class AppError {
  final String title;
  final String message;
  final Failure failure;

  const AppError({
    required this.title,
    required this.message,
    required this.failure,
  });

  factory AppError.fromFailure(Failure failure) {
    switch (failure) {
      case NetworkFailure():
        return NetworkErrorInfo(failure).generateError();
      case ServerFailure():
        return ServerErrorInfo(failure).generateError();
      case UnexpectedFailure():
        return UnexpectedErrorInfo(failure).generateError();
    }
  }

  void showErrorDialog(BuildContext ctx) {
    switch (failure) {
      // add more cases here for different error dialogs
      case NetworkFailure():
      case ServerFailure():
      case UnexpectedFailure():
        ctx.showErrorDialog(title: title, message: message, failure: failure);
    }
  }
}
