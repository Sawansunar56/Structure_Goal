import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../modals/task_modal.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Tasks.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE Task(id INTEGER PRIMARY KEY, content TEXT NOT NULL, queueOrder INTEGER NOT NULL UNIQUE, stackOrder INTEGER NOT NULL UNIQUE, priorityOrder INTEGER NOT NULL UNIQUE, createdAt TEXT NOT NULL UNIQUE);"),
        version: _version);
  }

  static Future<int> addTask(Task task) async {
    final db = await _getDB();
    return await db.insert("Task", task.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateTask(Task task) async {
    final db = await _getDB();
    return await db.update("Task", task.toJson(),
        where: 'id = ?',
        whereArgs: [task.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteTask(Task task) async {
    final db = await _getDB();
    return await db.delete("Task", where: 'id = ?', whereArgs: [task.id]);
  }

  static Future<List<Task>?> getAllTask() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> map = await db.query("Task");

    if (map.isEmpty) {
      return null;
    }

    return List.generate(map.length, (index) => Task.fromJson(map[index]));
  }
}
