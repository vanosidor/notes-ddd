import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_ddd/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_ddd/domain/notes/value_objects.dart';

class ColorField extends StatelessWidget {
  const ColorField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteFormBloc, NoteFormState>(
      buildWhen: (p, c) => p.note.color != c.note.color,
      // ignore: sized_box_for_whitespace
      builder: (context, state) => Container(
        height: 80,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final itemColor = NoteColor.predefinedColors[index];
              return GestureDetector(
                onTap: () => context
                    .read<NoteFormBloc>()
                    .add(NoteFormEvent.colorChanged(itemColor)),
                child: Material(
                  color: itemColor,
                  elevation: 4,
                  shape: CircleBorder(
                      side: state.note.color.value.fold(
                          (_) => BorderSide.none,
                          (color) => color == itemColor
                              ? const BorderSide(width: 1.5)
                              : BorderSide.none)),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: 50,
                    height: 50,
                  ),
                  // shape: CircleBorder(side: const BorderSide(width: 1.0)),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 12,
              );
            },
            itemCount: NoteColor.predefinedColors.length),
      ),
    );
  }
}
