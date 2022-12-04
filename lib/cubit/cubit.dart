import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_and_register1/cubit/state.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<loginRegisterState> {
  AppCubit(super.initialState);
  static AppCubit get(context) => BlocProvider.of(context);

  //late Database database;
  static Database? _database;
  Future<Database?> get database async {
    _database ??= await createDatabase();
  }

  //var database;
  late List<Map<String, Object?>> userData;
  bool b = false;

  createDatabase() {
    openDatabase(
      "users.db",
      version: 1,
      onCreate: (db, version) {
        print("create database");
        db
            .execute(
                "create table users(id INTEGER PRIMARY KEY,name TEXT,email TEXT,mobile TEXT, password TEXT)")
            .then((value) => print("create table"))
            .catchError(onError);
      },
      onOpen: (db) => print("database open"),
    ).then((value) {
      _database = value;
      emit(createDatabaseState());
    });
  }

  addUser(
      {required String name,
      required String email,
      required String mobile,
      required String password}) async {
    await _database!.transaction((txn) async {
      txn
          .rawInsert(
              'insert into users(name,email,mobile,password) values("$name","$email","$mobile","$password")')
          .then((value) {
        emit(registerState());
      }).catchError(onError);
    });
  }

  void login({required String email, required String password}) async {
    b = false;
    if (_database != null) {
      await _database!.transaction((txn) async {
        userData = await txn
            .rawQuery("select * from users where email = ?", ['$email']);
        for (var userr in userData) {
          if (userr["password"].toString() == password.toString()) {
            b = true;
            break;
          }
        }
        ;
      });
    }
    if (b)
      emit(loginYState());
    else
      emit(loginXState());
  }

  bool loginValid({required String email, required String password}) {
    login(email: email, password: password);
    if (b == true) {
      return true;
    }
    return false;
  }
}
