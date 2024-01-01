import 'dart:io';
import '../src/models/option.dart';

class Termainal {
  const Termainal();
  //testing printing lines inside my terminal
  void printPrompet({String str = " "}) {
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
  String collectInput() {
    return stdin.readLineSync()!;
  }

  //print options (this take a list of option and looping through it to print each option individual)
  void printOption({required List<OptionModel> options}) {
    //IMPORTANT NOTE :- HERE I USE .asMap() to convert any List to map that keys it indexes of the list elements and it values is List elements for example :- // ["ahmed"].asMap() ==> {"0":"ahmed"}
    //.forEach() method :- when i call it with List its provide to me element only .forEach((element)=>element) but when i use it with map it provide to me the current element and its index .forEach((element , index)=>element)
    //so i use .asMap() to use forEach() to provide to me the current element and its index.
    options.asMap().forEach((index, option) {
      stdout.writeln(option.toStringWithIndex(index: index.toString()));
    });
    stdout.writeln("Please Enter your option >");
  }
}
