import 'package:fpdart/fpdart.dart';
import 'package:github_profile/src/modules/search/domain/errors/errors.dart';

import '../entities/result.dart';
import '../repositories/get_repository.dart';

abstract class IGetRepositoriesByItem {
  Future<Either<IGetException, List<Result>>> call({required String searchItem});
}

class GetRepositories implements IGetRepositoriesByItem {
  final IGetRepository _getRepository;
  GetRepositories(this._getRepository);

  @override
  Future<Either<IGetException, List<Result>>> call({required String searchItem}) async {
    if (searchItem.isEmpty) {
      return left(const ArgumentsException('ArgumentsException'));
    }

    return await _getRepository(searchItem: searchItem);
  }
}
