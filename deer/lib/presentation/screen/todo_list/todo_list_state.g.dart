// GENERATED CODE - DO NOT MODIFY BY HAND

part of todo_list_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoListState extends TodoListState {
  @override
  final BuiltList<TodoEntity> todos;
  @override
  final bool todoNameHasError;
  @override
  final String filter;
  @override
  final Task diskAccessTask;

  factory _$TodoListState([void Function(TodoListStateBuilder) updates]) =>
      (new TodoListStateBuilder()..update(updates)).build();

  _$TodoListState._(
      {this.todos, this.todoNameHasError, this.filter, this.diskAccessTask})
      : super._() {
    if (todos == null) {
      throw new BuiltValueNullFieldError('TodoListState', 'todos');
    }
    if (todoNameHasError == null) {
      throw new BuiltValueNullFieldError('TodoListState', 'todoNameHasError');
    }
    if (filter == null) {
      throw new BuiltValueNullFieldError('TodoListState', 'filter');
    }
    if (diskAccessTask == null) {
      throw new BuiltValueNullFieldError('TodoListState', 'diskAccessTask');
    }
  }

  @override
  TodoListState rebuild(void Function(TodoListStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoListStateBuilder toBuilder() => new TodoListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoListState &&
        todos == other.todos &&
        todoNameHasError == other.todoNameHasError &&
        filter == other.filter &&
        diskAccessTask == other.diskAccessTask;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, todos.hashCode), todoNameHasError.hashCode),
            filter.hashCode),
        diskAccessTask.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodoListState')
          ..add('todos', todos)
          ..add('todoNameHasError', todoNameHasError)
          ..add('filter', filter)
          ..add('diskAccessTask', diskAccessTask))
        .toString();
  }
}

class TodoListStateBuilder
    implements Builder<TodoListState, TodoListStateBuilder> {
  _$TodoListState _$v;

  ListBuilder<TodoEntity> _todos;
  ListBuilder<TodoEntity> get todos =>
      _$this._todos ??= new ListBuilder<TodoEntity>();
  set todos(ListBuilder<TodoEntity> todos) => _$this._todos = todos;

  bool _todoNameHasError;
  bool get todoNameHasError => _$this._todoNameHasError;
  set todoNameHasError(bool todoNameHasError) =>
      _$this._todoNameHasError = todoNameHasError;

  String _filter;
  String get filter => _$this._filter;
  set filter(String filter) => _$this._filter = filter;

  Task _diskAccessTask;
  Task get diskAccessTask => _$this._diskAccessTask;
  set diskAccessTask(Task diskAccessTask) =>
      _$this._diskAccessTask = diskAccessTask;

  TodoListStateBuilder();

  TodoListStateBuilder get _$this {
    if (_$v != null) {
      _todos = _$v.todos?.toBuilder();
      _todoNameHasError = _$v.todoNameHasError;
      _filter = _$v.filter;
      _diskAccessTask = _$v.diskAccessTask;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TodoListState;
  }

  @override
  void update(void Function(TodoListStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodoListState build() {
    _$TodoListState _$result;
    try {
      _$result = _$v ??
          new _$TodoListState._(
              todos: todos.build(),
              todoNameHasError: todoNameHasError,
              filter: filter,
              diskAccessTask: diskAccessTask);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodoListState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
