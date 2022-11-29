class Abbrev {
  String? _pt;
  String? _en;

  Abbrev({String? pt, String? en}) {
    if (pt != null) {
      _pt = pt;
    }
    if (en != null) {
      _en = en;
    }
  }

  String? get pt => _pt;
  set pt(String? pt) => _pt = pt;
  String? get en => _en;
  set en(String? en) => _en = en;

  Abbrev.fromJson(Map<String, dynamic> json) {
    _pt = json['pt'];
    _en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pt'] = _pt;
    data['en'] = _en;
    return data;
  }
}
