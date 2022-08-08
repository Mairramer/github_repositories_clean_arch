import 'repository.dart';

class Result {
  final num totalCount;
  final bool incompleteResults;
  final List<Repository> items;

  Result({
    required this.totalCount,
    required this.incompleteResults,
    required this.items,
  });
}
