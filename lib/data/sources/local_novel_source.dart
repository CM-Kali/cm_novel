import '../models/novel_model.dart';
import '../models/chapter_model.dart';

class LocalNovelSource {
  static List<NovelModel> novels = [
    NovelModel(
      title: 'میرا خواب',
      author: 'CMADEEL',
      chapters: [
        ChapterModel(
          title: 'باب اول',
          content: 'ایک بچہ اپنے خوابوں میں بار بار ایک ہی منظر دیکھتا ہے...',
        ),
        ChapterModel(
          title: 'باب دوم',
          content: 'وقت گزرتا ہے، خواب حقیقت کے قریب آتے جاتے ہیں...',
        ),
      ],
    ),
  ];
}
