import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';
import 'package:todolist/features/todolist/domain/usecases/create_todo.dart';
import 'package:todolist/features/todolist/domain/usecases/delete_todo.dart';
import 'package:todolist/features/todolist/domain/usecases/done_or_undone_todo.dart';

part 'todolist_event.dart';
part 'todolist_state.dart';

class TodolistBloc extends Bloc<TodolistEvent, TodolistState> {
  final TodoListRepository todoListRepository;
  TodolistBloc(this.todoListRepository
      // {required this.createTodo,required this.deleteTodo,required this.doneOrUndoneTODO}
      )
      : super(TodolistInitial());



  Stream<TodolistState> mapEventToState(TodolistEvent event) async* {
    if(event is CreateTodoEvent) {
        
    }
  }
}
