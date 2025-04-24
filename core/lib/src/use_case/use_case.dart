import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Type call(Params params);
}

class NoParams {}

class IDParams extends Equatable {
  const IDParams({required this.id});
  final String id;

  @override
  List<Object?> get props => [id];
}

class PaginationParams extends Equatable {
  const PaginationParams({required this.page});
  final int page;

  @override
  List<Object?> get props => [page];
}
