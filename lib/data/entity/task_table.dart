import 'package:moor/moor.dart';



// Define tables that can model a database of recipes.

part 'task_table.g.dart';
@DataClassName('Task')
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text().nullable()();
  TextColumn get title => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

@UseMoor(
  tables: [Tasks],
  queries: {
    // query to load the total weight for each recipe by loading all ingredients
    // and taking the sum of their amountInGrams.
    
  },
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // populate data
        
      },
    );
  }
}