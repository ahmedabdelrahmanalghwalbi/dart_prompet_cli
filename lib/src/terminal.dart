import 'dart:io';
import '../src/models/option.dart';

class Termainal {
  //testing printing lines inside my terminal
  void printPrompet({String str = "ahmed abdelrahman"}) {
    stdout.writeln(str);
  }

  //clearing whats operating system that run on it (windows , linux , mac , android , etc ......)
  void clearOperatingSystemScreen() {
    if (Platform.isAndroid) {
      printPrompet(str: "the current operating system is Android");
    }
    if (Platform.isWindows) {
      printPrompet(str: "the current operating system is Windows");
    }
  }

  //read inputs from terminal (take the entered string in termainal and return it when i click enter in terminal )
  String? collectInput() {
    return stdin.readLineSync();
  }

  //print options (this take a list of option and looping through it to print each option individual)
  void printOption({required List<OptionModel> options}) {
    for (OptionModel option in options) {
      print(option.toString());
    }
    stdout.writeln("Please Enter your option\n");
    stdout.writeln(">");
  }
}
