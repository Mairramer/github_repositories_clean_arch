import 'package:github_profile/src/modules/search/domain/entities/result.dart';

abstract class IRepositoriesDatasource {
  Future<List<Result>> getRepositories(String searchItem);
}
