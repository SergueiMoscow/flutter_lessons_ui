import 'package:flutter/material.dart';

class SnackBarComponent extends StatelessWidget {
  const SnackBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: ElevatedButton(
          onPressed: () {
            const snackBar = SnackBar(content: const Text('SnackBar v1'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('SnackBar 1'),
        )),

        const SizedBox(height: 16, width: 16),

        Center(
            child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              action: SnackBarAction(
                  label: 'close',
                  onPressed: () {
                    print('SnackBar v2  onPressed');
                  }),
              content: const Text('SnackBar v2'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('SnackBar 2'),
        )),

        const SizedBox(height: 16, width: 16),

        Center(
            child: ElevatedButton(
              onPressed: () {
                final SnackBar snackBar = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  dismissDirection: DismissDirection.none,
                  content: const Text('SnackBar v3'),
                  showCloseIcon: true,
                  action: SnackBarAction(
                      label: 'any action',
                      onPressed: () {
                        print('SnackBar v3  onPressed');
                      }),

                );
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('SnackBar 3'),
            )),

      ],
    );
  }
}
