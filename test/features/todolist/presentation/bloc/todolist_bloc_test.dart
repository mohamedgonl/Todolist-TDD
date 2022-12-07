import 'dart:js_util';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';
import 'package:todolist/features/todolist/presentation/bloc/todolist_bloc.dart';

class MockTodoListRepository extends Mock implements TodoListRepository {}

void main() {
  final TodoListRepository repository = MockTodoListRepository();
  final TodolistBloc bloc = TodolistBloc(repository);

  test('init state bloc', () {
    expect(bloc,  TodolistInitial());
  });
}
