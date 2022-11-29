import 'abbrev.dart';

class Book {
  Abbrev? _abbrev;
  String? _name;
  String? _author;
  String? _group;
  String? _version;

  Book(
      {Abbrev? abbrev,
      String? name,
      String? author,
      String? group,
      String? version}) {
    if (abbrev != null) {
      _abbrev = abbrev;
    }
    if (name != null) {
      _name = name;
    }
    if (author != null) {
      _author = author;
    }
    if (group != null) {
      _group = group;
    }
    if (version != null) {
      _version = version;
    }
  }

  Abbrev? get abbrev => _abbrev;
  set abbrev(Abbrev? abbrev) => _abbrev = abbrev;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get author => _author;
  set author(String? author) => _author = author;
  String? get group => _group;
  set group(String? group) => _group = group;
  String? get version => _version;
  set version(String? version) => _version = version;

  Book.fromJson(Map<String, dynamic> json) {
    _abbrev = json['abbrev'] != null ? Abbrev.fromJson(json['abbrev']) : null;
    _name = json['name'];
    _author = json['author'];
    _group = json['group'];
    _version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (_abbrev != null) {
      data['abbrev'] = _abbrev!.toJson();
    }
    data['name'] = _name;
    data['author'] = _author;
    data['group'] = _group;
    data['version'] = _version;
    return data;
  }
}
