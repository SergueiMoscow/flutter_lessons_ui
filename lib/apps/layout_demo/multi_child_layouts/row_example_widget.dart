import 'package:flutter/material.dart';

class RowExampleWidget extends StatelessWidget {
  const RowExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(flex: 10, child: Text('Lorem Ipsum')),
        Expanded(
          flex: 10,
          child: Text('Lorem Ipsum - это текст-"рыба", часто используемый в печати '
            'и вэб-дизайне. Lorem Ipsum является стандартной "рыбой" '
            'для текстов на латинице с начала XVI века. В то время некий '
            'безымянный печатник создал большую коллекцию размеров и форм '
            'шрифтов, используя Lorem Ipsum для распечатки образцов. '
            'Lorem Ipsum не только успешно пережил без заметных изменений '
            'пять веков, но и перешагнул в электронный дизайн. Его '
            'популяризации в новое время послужили публикация листов '
            'Letraset с образцами Lorem Ipsum в 60-х годах и, в более '
            'недавнее время, программы электронной вёрстки типа Aldus '
            'PageMaker, в шаблонах которых используется Lorem Ipsum.'),
        ),
        Expanded(flex: 1, child: Placeholder()),

      ]
    );
  }
}
