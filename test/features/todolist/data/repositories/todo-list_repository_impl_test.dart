import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:todolist/features/todolist/data/datasources/datasource.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';

import '../../domain/usecases/create_todo_test.dart';

class MockDatasource extends Mock implements DataSource {}

void main() {
  final dataSourceImpl = DataSourceImpl();
  final mockDatasource = MockDatasource();
  final todo = TodoThing(detail: 'Hello');

  group('data sourrce', () {
    setUpAll(() {
      when(() => mockDatasource.createTodo(todo)).thenReturn(true);
    });
    test('shoud create todo at datasource impl', () {
      final result = mockDatasource.createTodo(todo);
      expect(result, true);
      verify(() => mockDatasource.createTodo(todo));
    });
  });
}
