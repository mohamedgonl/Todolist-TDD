import 'package:equatable/equatable.dart';
import 'package:todolist/features/todolist/domain/entities/todo-state.dart';

class TodoThing extends Equatable {
  final String detail;
  late final TodoState state;

  TodoThing({required this.detail});
  
  @override
  List<Object?> get props => [state, detail];

}


