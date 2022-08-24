import 'package:flutter/material.dart';
import 'package:la_vie/shared/database_sql/database_sqlite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {

  SqlDb sqlDb = SqlDb();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.green,
                  onPressed: () async{
                    int response = await sqlDb.insertData("""
                      INSERT INTO blogs 
                      (image , name , description , date)
                       VALUES
                       (
                        'assets/image/blog/plant_1.png' 
                        ,'5 Tips to treat plants'
                        ,'leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of leaf, in botany, any usually flattened green outgrowth from the stem of'
                         ,'2 days ago');
                    """);
                    print("########### $response");
                  },
                  child: Text('Insert Data'),
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () async{
                    List<Map> response = await sqlDb.readData("""
                      SELECT * FROM 'blogs'
                    """);
                    print(response);
                    // int r = await sqlDb.deleteData("""
                    // DELETE From 'blogs' WHERE image = 'assets/image/blog/plant_2.png'
                    // """);
                    // int res = await sqlDb.insertData(
                    //   """
                    //     INSERT INTO 'plants'
                    //     (image , name , price , description) VALUES (
                    //     'assets/image/home/plant_home_2.png' ,
                    //     'GARDENIA PLANT',
                    //     70,
                    //     'Native to southern Africa, snake plants are well adapted to conditions similar to those in southern regions of the United States. Because of this, they may be grown outdoors for part of all of the year in USDA zones 8 and warmer'
                    //     );
                    //   """
                    // );
                    // print(res);
                    // String databasePath = await getDatabasesPath();
                    // String path = join(databasePath , 'lavie.db');
                    // sqlDb.deleteDatabase(path);
                  },
                  child: Text(
                    'Read Date'
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
