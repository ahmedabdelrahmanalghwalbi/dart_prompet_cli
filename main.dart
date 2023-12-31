import './lib/prompter_sg.dart';

final Prompter _prompter = const Prompter();

void main() {
  List<OptionModel> options = [
    OptionModel(label: "I Want First Option", value: 1),
    OptionModel(label: "I Want Second Option", value: 2),
    OptionModel(label: "I Want Third Option", value: 3),
    OptionModel(label: "I Want Fourth Option", value: 4),
    OptionModel(label: "I Want Fifth Option", value: 5),
  ];

  final OptionModel? selectedOption = _prompter.buildQuestion(
      prompt: "Question :- Select Your Option Please .. ?", options: options);
  if (selectedOption != null) {
    stdout.writeln(selectedOption.toString());
  } else {
    stdout.writeln("no selected Option found yet !!!!!!!!!!!!");
  }
  bool? liked = _prompter
      .buildBinaryQuestion(prompt: "Do You Like This Library ?", options: []);
  if (liked == true) {
    stdout.writeln("Thanks for your Answer !!");
  } else {
    stdout.writeln("Oops, I will work to make this library like you !");
  }
}
