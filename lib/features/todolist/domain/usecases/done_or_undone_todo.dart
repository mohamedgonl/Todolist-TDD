import 'package:todolist/common/usecase.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';

class DoneOrUndoneTODO extends UseCase {
  final TodoListRepository repository;
  final TodoThing todo;
  final TodoState state;

  DoneOrUndoneTODO(this.repository, this.todo, this.state);

  @override
  bool call(todo) {
    // TODO: implement call
    return repository.doneOrUndoneTodo(todo: todo, state: state);
  }
}
