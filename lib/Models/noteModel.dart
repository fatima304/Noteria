import 'package:hive/hive.dart';

part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String date;
  @HiveField(1)
  final int color;
  @HiveField(2)
  String title;
  @HiveField(3)
  String subTitle;

  NoteModel({
    required this.date,
    required this.color,
    required this.title,
    required this.subTitle,
  });
}
