// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

  _NoteFormEvent initialized(Option<Note> initialNoteOption) {
    return _NoteFormEvent(
      initialNoteOption,
    );
  }

  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

  _ColorChanged colorChanged(Color color) {
    return _ColorChanged(
      color,
    );
  }

  _TodosChanged todosChanged(KtList<TodoItemPrimitive> todos) {
    return _TodosChanged(
      todos,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$NoteFormEventCopyWith<$Res> {
  factory _$NoteFormEventCopyWith(
          _NoteFormEvent value, $Res Function(_NoteFormEvent) then) =
      __$NoteFormEventCopyWithImpl<$Res>;
  $Res call({Option<Note> initialNoteOption});
}

/// @nodoc
class __$NoteFormEventCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$NoteFormEventCopyWith<$Res> {
  __$NoteFormEventCopyWithImpl(
      _NoteFormEvent _value, $Res Function(_NoteFormEvent) _then)
      : super(_value, (v) => _then(v as _NoteFormEvent));

  @override
  _NoteFormEvent get _value => super._value as _NoteFormEvent;

  @override
  $Res call({
    Object? initialNoteOption = freezed,
  }) {
    return _then(_NoteFormEvent(
      initialNoteOption == freezed
          ? _value.initialNoteOption
          : initialNoteOption // ignore: cast_nullable_to_non_nullable
              as Option<Note>,
    ));
  }
}

/// @nodoc

class _$_NoteFormEvent implements _NoteFormEvent {
  const _$_NoteFormEvent(this.initialNoteOption);

  @override
  final Option<Note> initialNoteOption;

  @override
  String toString() {
    return 'NoteFormEvent.initialized(initialNoteOption: $initialNoteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormEvent &&
            (identical(other.initialNoteOption, initialNoteOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialNoteOption, initialNoteOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialNoteOption);

  @JsonKey(ignore: true)
  @override
  _$NoteFormEventCopyWith<_NoteFormEvent> get copyWith =>
      __$NoteFormEventCopyWithImpl<_NoteFormEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialNoteOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialNoteOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _NoteFormEvent implements NoteFormEvent {
  const factory _NoteFormEvent(Option<Note> initialNoteOption) =
      _$_NoteFormEvent;

  Option<Note> get initialNoteOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NoteFormEventCopyWith<_NoteFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_ColorChanged(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return colorChanged(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color color) = _$_ColorChanged;

  Color get color => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({KtList<TodoItemPrimitive> todos});
}

/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodosChanged(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as KtList<TodoItemPrimitive>,
    ));
  }
}

/// @nodoc

class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.todos);

  @override
  final KtList<TodoItemPrimitive> todos;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return todosChanged(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(KtList<TodoItemPrimitive> todos) =
      _$_TodosChanged;

  KtList<TodoItemPrimitive> get todos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'NoteFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Note> initialNoteOption) initialized,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function(Color color) colorChanged,
    required TResult Function(KtList<TodoItemPrimitive> todos) todosChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Note> initialNoteOption)? initialized,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function(Color color)? colorChanged,
    TResult Function(KtList<TodoItemPrimitive> todos)? todosChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoteFormEvent value) initialized,
    required TResult Function(_BodyChanged value) bodyChanged,
    required TResult Function(_ColorChanged value) colorChanged,
    required TResult Function(_TodosChanged value) todosChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoteFormEvent value)? initialized,
    TResult Function(_BodyChanged value)? bodyChanged,
    TResult Function(_ColorChanged value)? colorChanged,
    TResult Function(_TodosChanged value)? todosChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements NoteFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

  _NoteFormState call(
      {required Note note,
      required bool showErrorMessage,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption}) {
    return _NoteFormState(
      note: note,
      showErrorMessage: showErrorMessage,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  Note get note => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteFormStateCopyWith<NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
  $Res call(
      {Note note,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc
abstract class _$NoteFormStateCopyWith<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  factory _$NoteFormStateCopyWith(
          _NoteFormState value, $Res Function(_NoteFormState) then) =
      __$NoteFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Note note,
      bool showErrorMessage,
      bool isEditing,
      bool isSaving,
      Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$NoteFormStateCopyWithImpl<$Res>
    extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$NoteFormStateCopyWith<$Res> {
  __$NoteFormStateCopyWithImpl(
      _NoteFormState _value, $Res Function(_NoteFormState) _then)
      : super(_value, (v) => _then(v as _NoteFormState));

  @override
  _NoteFormState get _value => super._value as _NoteFormState;

  @override
  $Res call({
    Object? note = freezed,
    Object? showErrorMessage = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_NoteFormState(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NoteFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_NoteFormState implements _NoteFormState {
  const _$_NoteFormState(
      {required this.note,
      required this.showErrorMessage,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Note note;
  @override
  final bool showErrorMessage;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<NoteFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'NoteFormState(note: $note, showErrorMessage: $showErrorMessage, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteFormState &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      __$NoteFormStateCopyWithImpl<_NoteFormState>(this, _$identity);
}

abstract class _NoteFormState implements NoteFormState {
  const factory _NoteFormState(
      {required Note note,
      required bool showErrorMessage,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<NoteFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_NoteFormState;

  @override
  Note get note => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<NoteFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteFormStateCopyWith<_NoteFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
