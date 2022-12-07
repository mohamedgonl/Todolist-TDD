import 'package:todolist/common/usecase.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';

class DeleteTodo extends UseCase {
  final TodoListRepository repository;
  final TodoThing todo;

  DeleteTodo(this.repository, this.todo);

  @override
  bool call(todo) {
    return repository.deleteTodo(todo);
  }
}
