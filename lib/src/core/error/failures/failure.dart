import 'package:equatable/equatable.dart';

import 'package:insta_eats_core/src/core/error/exceptions/exceptions.dart';

part 'network_failure.dart';
part 'server_failure.dart';
part 'unexpected_failure.dart';

sealed class Failure extends Equatable {
  const Failure();

  @override
  List<Object> get props => [];
}
