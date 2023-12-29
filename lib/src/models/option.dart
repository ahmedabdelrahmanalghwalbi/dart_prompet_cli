class OptionModel {
  final String label;
  final dynamic value;
  OptionModel({required this.label, required this.value});
  @override
  String toString() {
    return "this is option label ${label} and this is option value ${value.toString()}";
  }
}
