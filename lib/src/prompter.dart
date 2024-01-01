import '../src/models/option.dart';
import './terminal.dart';

//here i defined the global instance of terminal outer the Prompter class so any time new Prompter class create they will share the same instance
//here i want to declare only one constant Terminal that will be existed each every new instance of Prompter is created (avoid creating multiple instances inside Prompter class)
//but when i mark Terminal with const i will fount this error (The constructor being called isn't a const constructor.) this mean that i have no constant constructor in this class
//to solve this issue i will define constant constructor to Terminal class (const Terminal()) then the error above will disappear
final Termainal _termainal = const Termainal();

class Prompter {
  const Prompter();
  //binary method that answers is yes or no
  bool? buildBinaryQuestion(
      {required String prompt, required List<OptionModel> options}) {
    _termainal.clearOperatingSystemScreen();
    _termainal.printPrompet(str: "$prompt (Y/N)");
    _termainal.printOption(options: []);
    final input = _termainal.collectInput();
    return input.toLowerCase().contains('y');
  }

  //this method build question and it's options
  OptionModel? buildQuestion(
      {required String prompt, required List<OptionModel> options}) {
    try {
      _termainal.printPrompet(str: prompt);
      _termainal.printOption(options: options);
      final selectedInput = _termainal.collectInput();
      if (int.tryParse(selectedInput) != null) {
        int? index = int.tryParse(selectedInput);
        if (index != null) {
          return options[index];
        }
      }
      return null;
    } catch (ex) {
      return buildQuestion(prompt: prompt, options: options);
    }
  }
}
