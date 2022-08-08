import 'owner.dart';

class Repository {
  final num id;
  final String name;
  final String fullName;
  final Owner owner;
  final bool private;
  final String htmlUrl;

  Repository({
    required this.id,
    required this.name,
    required this.fullName,
    required this.owner,
    required this.private,
    required this.htmlUrl,
  });
}
