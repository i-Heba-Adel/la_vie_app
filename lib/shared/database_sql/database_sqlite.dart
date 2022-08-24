import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {

  static Database? _db;
  Future <Database?> get db async {
    if(_db == null){
      _db = await intialDb();
      return _db;
    }
    else{
      return _db;
    }
  }

  // Future<void> deleteDatabase(String path) => databaseFactory.deleteDatabase(path);

  intialDb() async{
    String databasePath = await getDatabasesPath();
    String path = join(databasePath , 'lavie.db');
    Database myDb = await openDatabase(path , onCreate: _onCreate , version: 5 , onUpgrade: _onUpgrade);
    return myDb;
  }
  _onUpgrade(Database db , int oldVersion , int newVersion) async{
    print("############################### on Upgrade");
  }

  _onCreate(Database db , int version) async{
    await db.execute('''
    CREATE TABLE "plants" (
      "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
      "image" TEXT NOT NULL ,
      "name" TEXT NOT NULL ,
      "description" TEXT NOT NULL ,
      "price" REAL NOT NULL
    )
    ''');
    await db.execute("""
    CREATE TABLE 'blogs' (
      'id' INTEGER PRIMARY KEY AUTOINCREMENT ,
      'image' TEXT NOT NULL ,
      'name' TEXT NOT NULL , 
      'description' TEXT NOT NULL , 
      'date' TEXT NOT NULL
    )
    """);
    await db.execute(
        """
        CREATE TABLE 'posts'(
          'id' INTEGER PRIMARY KEY AUTOINCREMENT ,
          'photo' TEXT,
          'title' TEXT NOT NULL,
          'description' TEXT NOT NULL,
          'userId' INTEGER NOT NULL
        )
      """
    );
    await db.execute(
      """
        CREATE TABLE 'users'(
          'id' INTEGER PRIMARY KEY AUTOINCREMENT ,
          'photo' TEXT , 
          'firstName' TEXT , 
          'lastName' TEXT , 
          'email' TEXT , 
          'password' TEXT
        );
      """
    );
    print("================================CREATE TABLE================================");
  }

  readData(String sql) async{
    Database ? myDb = await db;
    List<Map> response = await myDb!.rawQuery(sql);
    return response;
  }
  insertData(String sql) async{
    Database ? myDb = await db;
    int response = await myDb!.rawInsert(sql);
    return response;
  }
  updateData(String sql) async{
    Database ? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }
  deleteData(String sql) async{
    Database ? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
}