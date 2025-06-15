import 'package:fpdart/fpdart.dart';

import 'package:insta_eats_core/src/core/error/failures/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;

typedef StreamEither<T> = Stream<Either<Failure, T>>;

typedef FutureEitherUnit = FutureEither<Unit>;
