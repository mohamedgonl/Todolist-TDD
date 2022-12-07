import 'package:dartz/dartz.dart';
import 'package:todolist/errors/fairlure.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  bool call(Params params);
}

class NoParams extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
