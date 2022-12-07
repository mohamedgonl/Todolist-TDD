import 'package:todolist/features/todolist/data/datasources/datasource.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';

class TodoListRepositoryImpl implements TodoListRepository {
  final DataSource dataSource;

  TodoListRepositoryImpl(this.dataSource);
  
  @override
  bool createTodo(TodoThing todo) {
    // TODO: implement createTodo
    throw UnimplementedError();
  }

  @override
  bool deleteTodo(TodoThing todo) {
    // TODO: implement deleteTodo
    throw UnimplementedError();
  }

  @override
  bool doneOrUndoneTodo({required TodoThing todo,required TodoState state}) {
    // TODO: implement doneOrUndoneTodo
    throw UnimplementedError();
  }
}
