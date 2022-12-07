part of 'todolist_bloc.dart';

abstract class TodolistState extends Equatable {
  const TodolistState();

  @override
  List<Object> get props => [];
}

class TodolistInitial extends TodolistState {}

class Empty extends TodolistState {}

class Created extends TodolistState {}

class Deleted extends TodolistState {}

class Changed extends TodolistState {}
