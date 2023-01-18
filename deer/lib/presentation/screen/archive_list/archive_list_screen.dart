import 'package:deer/domain/entity/todo_entity.dart';
import 'package:deer/domain/interactor/task.dart';
import 'package:deer/presentation/colorful_app.dart';
import 'package:deer/presentation/screen/archive_list/archive_list_actions.dart';
import 'package:deer/presentation/screen/todo_detail/todo_detail_screen.dart';
import 'package:deer/presentation/shared/widgets/buttons.dart';
import 'package:deer/presentation/shared/widgets/dialogs.dart';
import 'package:deer/presentation/shared/widgets/label.dart';
import 'package:deer/presentation/shared/widgets/todo_tile.dart';
import 'package:flutter/material.dart';

import 'archive_list_bloc.dart';
import 'archive_list_state.dart';

class ArchiveListScreen extends StatefulWidget {
  @override
  _ArchiveListScreenState createState() => _ArchiveListScreenState();
}

class _ArchiveListScreenState extends State<ArchiveListScreen> {
  // Place variables here
  ArchiveListBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = ArchiveListBloc();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  // Place methods here
  void _showDetails(TodoEntity todo) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => TodoDetailScreen(todo: todo, editable: false),
    ));
  }

  void _clearArchive() {
    _bloc.actions.add(ClearArchive());
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) => RoundedAlertDialog(
            title: 'Do you want to clear the Archive?',
            actions: <Widget>[
              FlatRoundButton(
                  text: 'Yes',
                  onTap: () {
                    Navigator.pop(context);
                    _clearArchive();
                  }),
              FlatRoundButton(
                text: 'No',
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: _bloc.initialState,
      stream: _bloc.state,
      builder: (context, snapshot) {
        return _buildUI(snapshot.data);
      },
    );
  }

  Widget _buildUI(ArchiveListState state) {
    // Build your root view here
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorfulApp.of(context).colors.bleak),
        centerTitle: true,
        title: Text('Archive'),
      ),
      body: state.clearTask != Task.running() ? _buildBody(state) : Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildBody(ArchiveListState state) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        decoration: BoxDecoration(gradient: ColorfulApp.of(context).colors.brightGradient),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: state.archivedTodos.length == 0
                  ? buildCentralLabel(text: 'Archive is empty!', context: context)
                  : ListView.builder(
                      itemCount: state.archivedTodos.length,
                      itemBuilder: (context, index) {
                        final todo = state.archivedTodos[index];
                        return TodoTile(
                          todo: todo,
                          onTileTap: () => _showDetails(todo),
                          showNotification: false,
                          isFinished: true,
                        );
                      },
                    ),
            ),
            BottomButton(
              text: 'Clear',
              onPressed: _showConfirmationDialog,
            ),
          ],
        ),
      ),
    );
  }
}
