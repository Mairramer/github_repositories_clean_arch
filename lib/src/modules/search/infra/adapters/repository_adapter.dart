import 'package:github_profile/src/modules/search/domain/entities/repository.dart';

import 'owner_adapter.dart';

class RepositoryAdapter {
  static Repository fromJson(dynamic json) {
    return Repository(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
      owner: OwnerAdapter.fromJson(json['owner']),
      htmlUrl: json['html_url'],
      private: json['private'],
    );
  }
}
