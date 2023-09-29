class Burc {
  final String _burcadi;
  final String _burcTarihi;
  final String _burcDetay;
  final String _kucukResim;
  final String _buyukResim;
  get burcadi => this._burcadi;
  get burcTarihi => this._burcTarihi;
  get burcDetay => this._burcDetay;
  get kucukResim => this._kucukResim;
  get buyukResim => this._buyukResim;

  Burc(this._burcadi, this._burcTarihi, this._burcDetay, this._kucukResim,
      this._buyukResim);

  @override
  String toString() {
    return '$_burcadi-$_kucukResim';
  }
}
