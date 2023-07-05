import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      addons: [],
      directories: [
        WidgetbookCategory(
          name: 'Containers',
          children: [
            WidgetbookComponent(
              name: 'With colors',
              useCases: [
                WidgetbookUseCase(
                  name: 'amber',
                  builder: (context) => Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                ),
                WidgetbookUseCase(
                  name: 'red',
                  builder: (context) => Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookFolder(
          name: 'Texts',
          children: [
            WidgetbookComponent(
              name: 'Size',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => const Text(
                    'The default text ...',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
