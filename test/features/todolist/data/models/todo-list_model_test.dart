import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todolist/features/todolist/data/models/todo-list_model.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';

void main() {
  final todoModelTest = TodoListModel(detail: 'hello');

  test('should be a subclass of todolist model', () {
    expect(todoModelTest, isA<TodoThing>());
  });
}
