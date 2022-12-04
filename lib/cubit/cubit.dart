import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_and_register1/cubit/state.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<loginRegisterState> {
  AppCubit(super.initialState);
  static AppCubit get(context) => BlocProvider.of(context);

  late Database database;
  late List<Map<String, Object?>> userData;
  bool b = false;

  void createDatabase() {
    openDatabase(
      "loginRegister.db",
      version: 1,
      onCreate: (db, version) {
        db
            .execute(
                "create table users(id INTEGER PRIMARY KEY,name TEXT,email TEXT,mobile TEXT, password TEXT)")
            .then((value) => null)
            .catchError(onError);
      },
    ).then((value) {
      database = value;
      emit(createDatabaseState());
    });
  }

  void addUser(
      {required String name,
      required String email,
      required String mobile,
      required String password}) async {
    await database.transaction((txn) async {
      txn
          .rawInsert(
              'insert into users(name,email,mobile,password) values("$name","$email","$mobile","$password")')
          .then((value) {
        emit(registerState());
      }).catchError(onError);
    });
  }

  void login({required String name, required String password}) async {
    b = false;
    await database.transaction((txn) async {
      userData = txn.rawQuery(
          "select * from users where user = ?", ['$name']).then((value) {
        for (var userr in userData) {
          if (userr["password"] == password) {
            b = true;
            break;
          }
        }
        emit(loginState());
      }).catchError(onError) as List<Map<String, Object?>>;
    });
  }

  bool loginValid({required String name, required String password}) {
    login(name: name, password: password);
    if (b == true) {
      return true;
    }
    return false;
  }
}
