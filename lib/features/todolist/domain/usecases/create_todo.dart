import 'package:todolist/common/usecase.dart';
import 'package:todolist/errors/fairlure.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';
import 'package:dartz/dartz.dart';

class CreateTodo extends UseCase {
  final TodoListRepository repository;
  final TodoThing todo;
  CreateTodo(this.todo, this.repository);

  @override
  bool call(todo) {
    return repository.createTodo(todo);
  }
}
