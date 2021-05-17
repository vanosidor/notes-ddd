import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_ddd/domain/core/value_objects.dart';
import 'package:notes_ddd/domain/notes/note.dart';
import 'package:notes_ddd/domain/notes/todo_item.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';

part 'note_dtos.freezed.dart';

part 'note_dtos.g.dart';

@freezed
abstract class NoteDto implements _$NoteDto {
  const factory NoteDto(
          {@JsonKey(ignore: true) String? id,
          required String body,
          required int color,
          required List<TodoItemDto> todos,
          @ServerTimeStampConverter() required FieldValue serverTimeStamp}) =
      _NoteDto;

  factory NoteDto.fromJson(Map<String, dynamic> json) =>
      _$NoteDtoFromJson(json);

  factory NoteDto.fromDomain(Note note) {
    return NoteDto(
      id: note.id.getOrCrash(),
      body: note.body.getOrCrash(),
      color: note.color.getOrCrash().value,
      todos: note.todos
          .getOrCrash()
          .map((todoItem) => TodoItemDto.fromDomain(todoItem))
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Note toDomain() {
    return Note(
        id: (id != null) ? UniqueId.fromUniqueString(id!) : UniqueId(),
        color: NoteColor(Color(color)),
        body: NoteBody(body),
        todos: List3(todos.map((dto) => dto.toDomain()).toImmutableList()));
  }

  factory NoteDto.fromFirestore(DocumentSnapshot doc) {
    return NoteDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(id: doc.id);
  }

  const NoteDto._();
}

@freezed
abstract class TodoItemDto implements _$TodoItemDto {
  const factory TodoItemDto(
      {required String id,
      required String name,
      required bool done}) = _TodoItemDto;

  factory TodoItemDto.fromDomain(TodoItem todoItem) {
    return TodoItemDto(
        id: todoItem.id.getOrCrash(),
        name: todoItem.name.getOrCrash(),
        done: todoItem.done);
  }

  factory TodoItemDto.fromJson(Map<String, dynamic> json) =>
      _$TodoItemDtoFromJson(json);

  const TodoItemDto._();

  TodoItem toDomain() {
    return TodoItem(
      id: UniqueId.fromUniqueString(id),
      name: TodoName(name),
      done: done,
    );
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
