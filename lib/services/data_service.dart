import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:supabase/supabase.dart';

const String supabaseUrl = sSupabaseUrl;
const String token = sToken;

class DataService {
  final supabase = SupabaseClient(supabaseUrl, token);

  insertSplit(name) async {
    var user_id = AuthService().getUser();
    await supabase.from('Splits').insert({"sname": name, "user_id": user_id});
  }

  insertDay() async {
    int split_id = 0; //todo later
    await supabase
        .from('Days')
        .insert({"date": DateTime.now(), "split_id": split_id});
  }

  insertExercise(name, weight, note, sets) async {
    int day_id = 0; //todo later
    await supabase.from('Exercises').insert({
      "ename": name,
      "weight": weight,
      "note": note,
      "sets": sets,
      "day_id": day_id
    });
  }

  deleteSplit(split_id) async {
    await supabase.from('Splits').delete().match({'split_id': split_id});
  }

  deleteDay(day_id) async {
    await supabase.from('Days').delete().match({'day_id': day_id});
  }

  deleteExercise(exercise_id) async {
    await supabase
        .from('Exercises')
        .delete()
        .match({'exercise_id': exercise_id});
  }

  hideSplit(split_id) async {
    await supabase
        .from('Splits')
        .update({'isHidden': true}).match({'split_id': split_id});
  }

  unhideSplit(split_id) async {
    await supabase
        .from('Splits')
        .update({'isHidden': false}).match({'split_id': split_id});
  }

  updateSplit(split_id, name) async {
    await supabase
        .from('Splits')
        .update({'sname': name}).match({'split_id': split_id});
  }

  updateExercise(exercise_id, name, weight, note, sets) async {
    await supabase.from('Exercises').update({
      'ename': name,
      'weight': weight,
      'note': note,
      'sets': sets
    }).match({'exercise_id': exercise_id});
  }

  getAllUnhiddenSplits() async {
    var user_id = AuthService().getUser();

    final splits = await supabase
        .from('Splits')
        .select('sname')
        .match({"user_id": user_id, "isHidden": false}).order('split_id',
            ascending: false);

    return splits;
  }

  getAllhiddenSplits() async {
    var user_id = AuthService().getUser();

    final splits = await supabase
        .from('Splits')
        .select('sname')
        .match({"user_id": user_id, "isHidden": true}).order('split_id',
            ascending: false);

    return splits;
  }

  getAllDays(split_id) async {
    final days = await supabase
        .from('Days')
        .select('date')
        .match({"split_id": split_id}).order('day_id', ascending: false);

    return days;
  }

  getAllExercises(day_id) async {
    final exercises = await supabase
        .from('Exercises')
        .select('ename, weight, note, sets')
        .match({"day_id": day_id}).order('exercise_id', ascending: false);

    return exercises;
  }
}
