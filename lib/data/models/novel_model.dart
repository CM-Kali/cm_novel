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

class ChapterModel {
  final String title;
  final String content;

  ChapterModel({required this.title, required this.content});
}
