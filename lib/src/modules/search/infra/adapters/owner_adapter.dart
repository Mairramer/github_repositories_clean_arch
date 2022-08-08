import '../../domain/entities/owner.dart';

class OwnerAdapter {
  OwnerAdapter._();

  static Owner fromJson(dynamic json) {
    return Owner(
      id: json['id'],
      login: json['login'],
      avatarUrl: json['avatar_url'],
      gravatarId: json['gravatar_id'],
      htmlUrl: json['html_url'],
      siteAdmin: json['site_admin'],
      type: json['type'],
      url: json['url'],
    );
  }
}
