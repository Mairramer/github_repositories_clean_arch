import 'package:fpdart/src/either.dart';

import '../../domain/entities/result.dart';
import '../../domain/errors/errors.dart';
import '../../domain/repositories/get_repository.dart';
import '../adapters/result_adapter.dart';
import '../datasources/repositories_datasource.dart';

class GetRepository extends IGetRepository {
  final IRepositoriesDatasource _repositoriesDatasource;
  GetRepository(this._repositoriesDatasource);

  @override
  Future<Either<IGetException, List<Result>>> call({required String searchItem}) async {
    try {
      final list = await _repositoriesDatasource.getRepositories(searchItem);

      final result = list.map(ResultAdapter.fromJson).toList();

      return right(result);
    } on IGetException catch (e) {
      return left(e);
    }
  }
}
