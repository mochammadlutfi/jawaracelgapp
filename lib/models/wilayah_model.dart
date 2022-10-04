class WilayahModel {
  String? id;
  String? nama;
  String? bpsKode;
  String? parentId;
  String? lat;
  String? lng;
  String? kodePos;

  WilayahModel({
      this.id,
      this.nama,
      this.bpsKode,
      this.parentId,
      this.lat,
      this.lng,
      this.kodePos
    });

  WilayahModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    bpsKode = json['bps_kode'];
    parentId = json['kecamatan_id'];
    lat = json['lat'];
    lng = json['lng'];
    kodePos = json['kode_pos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['bps_kode'] = bpsKode;
    data['kecamatan_id'] = parentId;
    data['lat'] = lat;
    data['lng'] = lng;
    data['kode_pos'] = kodePos;
    return data;
  }
}