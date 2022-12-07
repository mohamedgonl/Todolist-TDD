part of 'todolist_bloc.dart';

abstract class TodolistEvent extends Equatable {
  const TodolistEvent();

  @override
  List<Object> get props => [];
}

class CreateTodoEvent extends TodolistEvent {
  final TodoThing todo;

  CreateTodoEvent(this.todo);
}

class DeleteTodoEvent extends TodolistEvent {
  final TodoThing todo;

  DeleteTodoEvent(this.todo);
}

class DoneOrUndoneTodoEvent extends TodolistEvent {
  final TodoThing todo;
  final TodoState state;

  DoneOrUndoneTodoEvent({required this.todo, required this.state});
}
