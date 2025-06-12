import '../database.dart';

class UserImagesTable extends SupabaseTable<UserImagesRow> {
  @override
  String get tableName => 'user_images';

  @override
  UserImagesRow createRow(Map<String, dynamic> data) => UserImagesRow(data);
}

class UserImagesRow extends SupabaseDataRow {
  UserImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserImagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userUid => getField<String>('user_uid');
  set userUid(String? value) => setField<String>('user_uid', value);

  String? get imagePath => getField<String>('image_path');
  set imagePath(String? value) => setField<String>('image_path', value);
}
