import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:supabase/supabase.dart';

const String supabaseUrl = sSupabaseUrl;
const String token = sToken;

final supabase = SupabaseClient(supabaseUrl, token);

class DataService {
  static insertSplit(name) async {
    await supabase
        .from('Splits')
        .insert({"sname": name, "user_id": await AuthService.getUserId()});
  }

  static insertDay(split_id) async {
    await supabase
        .from('Days')
        .insert({"date": DateTime.now(), "split_id": split_id});
  }

  static insertExercise(name, weight, note, sets, day_id) async {
    await supabase.from('Exercises').insert({
      "ename": name,
      "weight": weight,
      "note": note,
      "sets": sets,
      "day_id": day_id
    });
  }

  static deleteSplit(split_id) async {
    await supabase.from('Splits').delete().match({'split_id': split_id});
  }

  static deleteDay(day_id) async {
    await supabase.from('Days').delete().match({'day_id': day_id});
  }

  static deleteExercise(exercise_id) async {
    await supabase
        .from('Exercises')
        .delete()
        .match({'exercise_id': exercise_id});
  }

  static hideSplit(split_id) async {
    await supabase
        .from('Splits')
        .update({'isHidden': true}).match({'split_id': split_id});
  }

  static unhideSplit(split_id) async {
    await supabase
        .from('Splits')
        .update({'isHidden': false}).match({'split_id': split_id});
  }

  static updateSplit(split_id, name) async {
    await supabase
        .from('Splits')
        .update({'sname': name}).match({'split_id': split_id});
  }

  static updateExercise(exercise_id, name, weight, note, sets) async {
    await supabase.from('Exercises').update({
      'ename': name,
      'weight': weight,
      'note': note,
      'sets': sets
    }).match({'exercise_id': exercise_id});
  }

  // static getAllUnhiddenSplits() async {
  //   final splits = await supabase
  //       .from('Splits')
  //       .select('sname, split_id')
  //       .match({
  //     "user_id": await AuthService.getUserId(),
  //     "isHidden": false
  //   }).order('split_id', ascending: false);

  //   return splits;
  // }

  // static getAllhiddenSplits() async {
  //   final splits = await supabase
  //       .from('Splits')
  //       .select('sname, split_id')
  //       .match({
  //     "user_id": await AuthService.getUserId(),
  //     "isHidden": true
  //   }).order('split_id', ascending: false);

  //   return splits;
  // }

  // static getAllDays(split_id) async {
  //   final days = await supabase
  //       .from('Days')
  //       .select('date, day_id')
  //       .match({"split_id": split_id}).order('day_id', ascending: false);

  //   return days;
  // }

  // static getAllExercises(day_id) async {
  //   final exercises = await supabase
  //       .from('Exercises')
  //       .select('ename, weight, note, sets, exercise_id')
  //       .match({"day_id": day_id}).order('exercise_id', ascending: false);

  //   return exercises;
  // }

  static Stream<dynamic> getAllUnhiddenSplits() async* {
    yield* supabase
        .from('Splits')
        .stream(primaryKey: ['split_id'])
        .eq("user_id", await AuthService.getUserId())
        .order('split_id', ascending: false)
        .map((maps) => maps.where((elm) => elm['isHidden'] == false).toList());
  }

  static Stream<dynamic> getAllhiddenSplits() async* {
    yield* supabase
        .from('Splits')
        .stream(primaryKey: ['split_id'])
        .eq("user_id", await AuthService.getUserId())
        .eq("isHidden", true)
        .order('split_id', ascending: false);
  }

  static Stream<dynamic> getAllDays(split_id) async* {
    yield* supabase
        .from('Days')
        .stream(primaryKey: ['day_id'])
        .eq("split_id", split_id)
        .order('day_id', ascending: false);
  }

  static Stream<dynamic> getAllExercises(day_id) async* {
    yield* supabase
        .from('Exercises')
        .stream(primaryKey: ['exercise_id'])
        .eq("day_id", day_id)
        .order('exercise_id', ascending: false);
  }
}
