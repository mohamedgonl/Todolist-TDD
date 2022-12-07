import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:todolist/common/usecase.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';
import 'package:todolist/features/todolist/domain/entities/todo-thing.dart';
import 'package:todolist/features/todolist/domain/repositories/todo-list_repository.dart';
import 'package:todolist/features/todolist/domain/usecases/create_todo.dart';

class MockTodoListRepository extends Mock implements TodoListRepository {}

class TodoThingFake extends Fake implements TodoThing {}

// @GenerateMocks([MockTodoListRepository, TodoThingFake])
void main() {
  final mockTodoListRepository = MockTodoListRepository();
  final newTodo = TodoThingFake();
  // final usecase = CreateTodo(newTodo, mockTodoListRepository);

  group('Usecase test', () {
    test('should create a new todo', () {
      when(() => mockTodoListRepository.createTodo(newTodo)).thenReturn(true);

      expect(mockTodoListRepository.createTodo(newTodo), isTrue);

      verify(() => mockTodoListRepository.createTodo(newTodo)).called(1);

      verifyNoMoreInteractions(mockTodoListRepository);
    });

    test(
      'shoud delete todo',
      () {
        when(() => mockTodoListRepository.deleteTodo(newTodo)).thenReturn(true);

        expect(mockTodoListRepository.deleteTodo(newTodo), true);

        verify(() => mockTodoListRepository.deleteTodo(newTodo)).called(1);

        verifyNoMoreInteractions(mockTodoListRepository);
      },
    );
    test('shoud done or undone todo', () {
      when(() => mockTodoListRepository.doneOrUndoneTodo(
          todo: newTodo, state: TodoState.DONE)).thenReturn(true);

      expect(
          mockTodoListRepository.doneOrUndoneTodo(
              todo: newTodo, state: TodoState.DONE),
          true);

      verify(() => mockTodoListRepository.doneOrUndoneTodo(
          todo: newTodo, state: TodoState.DONE)).called(1);

      verifyNoMoreInteractions(mockTodoListRepository);
    });
  });
}
