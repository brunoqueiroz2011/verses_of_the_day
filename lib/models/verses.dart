import 'package:verses_of_the_day/models/book.dart';

class Verses {
  Book? _book;
  int? _chapter;
  int? _number;
  String? text;

  Verses({Book? book, int? chapter, int? number, String? text}) {
    if (book != null) {
      _book = book;
    }
    if (chapter != null) {
      _chapter = chapter;
    }
    if (number != null) {
      _number = number;
    }
    if (text != null) {
      text = text;
    }
  }

  Book? get book => _book;
  set book(Book? book) => _book = book;
  int? get chapter => _chapter;
  set chapter(int? chapter) => _chapter = chapter;
  int? get number => _number;
  set number(int? number) => _number = number;

  Verses.fromJson(Map<String, dynamic> json) {
    _book = json['book'] != null ? Book.fromJson(json['book']) : null;
    _chapter = json['chapter'];
    _number = json['number'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_book != null) {
      data['book'] = _book!.toJson();
    }
    data['chapter'] = _chapter;
    data['number'] = _number;
    data['text'] = text;
    return data;
  }
}
