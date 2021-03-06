library bar;

import 'bar.dart';
import 'package:angular2/src/core/annotations/annotations.dart';
import 'package:angular2/src/core/annotations/template.dart';

bool _visited = false;
void setupReflection(reflector) {
  if (_visited) return;
  _visited = true;
  reflector
    ..registerType(MyComponent, {
      'factory': () => new MyComponent(),
      'parameters': const [],
      'annotations': const [
        const Component(selector: '[soup]'),
        const Template(inline: 'Salad')
      ]
    });
}
