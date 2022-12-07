import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';


abstract class DataSource {
  bool createTodo(TodoThing todo);
  bool doneOrUndoneTodo(TodoThing todo, TodoState state);
  bool deleteTodo(TodoThing todo);
}

class DataSourceImpl implements DataSource {
  // final SharedPreferences sharedPreferences;
  var todolists = List<TodoThing>.empty(growable: true);
  
  @override
  bool createTodo(TodoThing todo) {
    todolists.add(todo);
    return true;
  }

  @override
  bool deleteTodo(TodoThing todo) {
    todolists.remove(todo);
    return true;
  }

  @override
  bool doneOrUndoneTodo(TodoThing todo, TodoState state) {
    todolists.forEach((element) {
      if (element.detail == todo.detail) {
        element.state = state;
      }
    });
    return true;
  }
}
