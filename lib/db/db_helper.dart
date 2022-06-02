import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:to_do/models/task.dart';

class DBHelper {
  static final _databaseName = 'todo.db';
  static final _task_table = 'tasks_table';
  static final _databaseVersion = 1;
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  _initDB() async {
    String path = join(await getDatabasesPath(), _databaseName);

    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE $_task_table('
        'id INTEGER PRIMARY KEY AUTOINCREMENT, title STRING, note TEXT, date STRING,startTime STRING,endTime STRING, remind INTEGER, repeat STRING, color INTEGER, isCompleted INTEGER)');
  }
}
