import 'package:workout_notebook/models/strings.dart' as strings;

class MuscleGroupType {
  static const chest = MuscleGroupType._('chest');
  static const back = MuscleGroupType._('back');
  static const arms = MuscleGroupType._('arms');
  static const legs = MuscleGroupType._('legs');
  static const belly = MuscleGroupType._('belly');

  static const values = [
    chest,
    back,
    arms,
    legs,
    belly,
  ];

  final String _value;

  const MuscleGroupType._(this._value);

  @override
  String toString() => _value;

  String toLocaleString() {
    switch (this) {
      case chest: return strings.chestText;
      case back: return strings.backText;
      case arms: return strings.armsText;
      case legs: return strings.legsText;
      case belly: return strings.bellyText;
      default: return '';
    }
  }
}