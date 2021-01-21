class Horoscope {
  String _horoscopeName;
  String _horoscopeDate;
  String _horoscopeDetail;
  String _horoscopeLittleImage;
  String _horoscopeBigImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeLittleImage, this._horoscopeBigImage);

  String get horoscopeBigImage => _horoscopeBigImage;

  set horoscopeBigImage(String value) {
    _horoscopeBigImage = value;
  }

  String get horoscopeLittleImage => _horoscopeLittleImage;

  set horoscopeLittleImage(String value) {
    _horoscopeLittleImage = value;
  }

  String get horoscopeDetail => _horoscopeDetail;

  set horoscopeDetail(String value) {
    _horoscopeDetail = value;
  }

  String get horoscopeDate => _horoscopeDate;

  set horoscopeDate(String value) {
    _horoscopeDate = value;
  }

  String get horoscopeName => _horoscopeName;

  set horoscopeName(String value) {
    _horoscopeName = value;
  }
}
