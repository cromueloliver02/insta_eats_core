import 'package:equatable/equatable.dart';

import 'package:insta_eats_core/src/core/type_defs/either_type_def.dart';

abstract interface class UseCase<T, P> {
  T call(P params);
}

abstract interface class FutureUseCase<T, P> {
  FutureEither<T> call(P params);
}

abstract interface class StreamUseCase<T, P> {
  StreamEither<T> call(P params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];
}
