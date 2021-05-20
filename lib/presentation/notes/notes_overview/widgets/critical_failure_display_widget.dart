import 'package:flutter/material.dart';
import 'package:notes_ddd/domain/notes/note_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure failure;

  const CriticalFailureDisplay({Key? key, required this.failure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('😱', style: TextStyle(fontSize: 100)),
          const SizedBox(
            height: 8,
          ),
          Text(
            failure.maybeMap(
                insufficientPermission: (_) => 'Insufficient permissions',
                orElse: () =>
                    'Unexpected error.\nPlease, contact with support '),
            textAlign: TextAlign.center,
          ),
          TextButton(
            // ignore: avoid_print
            onPressed: () => {print('Sending email')},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(
                  width: 16,
                ),
                Text('I NEED A HELP'),
              ],
            ),
          ),
        ],
      ),
    );
    //
  }
}
