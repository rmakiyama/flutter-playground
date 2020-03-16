import 'package:uuid/uuid.dart';

class Diary {
  final DiaryId id = DiaryId();
  final String title;
  final String body;
  final DateTime createdAt = DateTime.now();
  final DateTime updatedAt = DateTime.now();

  Diary(
    this.title,
    this.body,
  );
}

class DiaryId {
  final String value = Uuid().v1();
}
