import 'package:todolist/errors/fairlure.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:dartz/dartz.dart';

abstract class TodoListRepository {
  bool createTodo(TodoThing todo);
  bool doneOrUndoneTodo({required TodoThing todo,required TodoState state});
  bool deleteTodo(TodoThing todo);
}
