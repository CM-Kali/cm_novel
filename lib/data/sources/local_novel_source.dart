import 'package:flutter/services.dart' show rootBundle;
import '../models/novel_model.dart';
import '../models/chapter_model.dart' hide ChapterModel;

class LocalNovelSource {
  Future<List<NovelModel>> loadNovels() async {
    final List<String> novels = [
      'assets/novels/mera_khawab.txt',
      'assets/novels/chand_ka_raaz.txt',
    ];

    List<NovelModel> allNovels = [];

    for (final path in novels) {
      final content = await rootBundle.loadString(path);
      final lines = content.split('\n');

      String title = '';
      String author = '';
      List<ChapterModel> chapters = [];
      String? chapterTitle;
      StringBuffer chapterText = StringBuffer();

      for (var line in lines) {
        line = line.trim();
        if (line.startsWith('#title')) {
          title = line.replaceFirst('#title', '').trim();
        } else if (line.startsWith('#author')) {
          author = line.replaceFirst('#author', '').trim();
        } else if (line.startsWith('#chapter')) {
          if (chapterTitle != null) {
            chapters.add(ChapterModel(
              title: chapterTitle,
              content: chapterText.toString().trim(),
            ));
            chapterText.clear();
          }
          chapterTitle = line.replaceFirst('#chapter', '').trim();
        } else {
          chapterText.writeln(line);
        }
      }

      if (chapterTitle != null) {
        chapters.add(ChapterModel(
          title: chapterTitle,
          content: chapterText.toString().trim(),
        ));
      }

      allNovels.add(NovelModel(title: title, author: author, chapters: chapters));
    }

    return allNovels;
  }
}
