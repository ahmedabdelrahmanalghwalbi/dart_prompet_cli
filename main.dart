import 'lib/src/models/option.dart';
import 'lib/src/terminal.dart';

void main() {
  Termainal termainal = Termainal();
  termainal.printPrompet();
  termainal.clearOperatingSystemScreen();
  String? name = termainal.collectInput();
  print(name);
  termainal.printOption(options: [
    OptionModel(label: "option 1", value: 1),
    OptionModel(label: "option 2", value: 2),
    OptionModel(label: "option 3", value: 3),
    OptionModel(label: "option 4", value: 4),
    OptionModel(label: "option 5", value: 5),
  ]);
}
