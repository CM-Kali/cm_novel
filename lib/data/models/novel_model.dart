import 'chapter_model.dart';

class NovelModel {
  final String title;
  final String author;
  final List<ChapterModel> chapters;

  NovelModel({
    required this.title,
    required this.author,
    required this.chapters,
  });
}
