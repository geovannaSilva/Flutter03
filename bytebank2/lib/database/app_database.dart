import 'package:bytebank2/database/contact_dao.dart';
import 'package:bytebank2/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async{
  final String path = join(await getDatabasesPath(), 'bytebank.db');
  return openDatabase(path,
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
    //    onDowngrade: onDatabaseDowngradeDelete,
  );
}
