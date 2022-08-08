import 'package:fpdart/fpdart.dart';

import '../entities/result.dart';
import '../errors/errors.dart';

abstract class IGetRepository {
  Future<Either<IGetException, List<Result>>> call({required String searchItem});
}
