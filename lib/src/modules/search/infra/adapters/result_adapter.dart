import 'package:github_profile/src/modules/search/infra/adapters/repository_adapter.dart';

import '../../domain/entities/result.dart';

class ResultAdapter {
  static Result fromJson(dynamic json) {
    return Result(
      incompleteResults: json['incomplete_results'],
      items: [RepositoryAdapter.fromJson(json['items'])],
      totalCount: json['total_count'],
    );
  }
}
