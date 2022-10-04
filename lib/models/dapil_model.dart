class DapilModel {
  int? id;
  String? nama;
  int? level;
  String? wilayahType;
  String? daerahId;
  String? kecamatanId;
  String? wilayahId;
  int? tps;
  int? dpt;
  String? createdAt;
  String? updatedAt;
  String? tingkat;
  String? wilayahName;

  DapilModel(
      {this.id,
      this.nama,
      this.level,
      this.wilayahType,
      this.daerahId,
      this.kecamatanId,
      this.wilayahId,
      this.tps,
      this.dpt,
      this.createdAt,
      this.updatedAt,
      this.tingkat,
      this.wilayahName});

  DapilModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    level = json['level'];
    wilayahType = json['wilayah_type'];
    daerahId = json['daerah_id'];
    kecamatanId = json['kecamatan_id'];
    wilayahId = json['wilayah_id'];
    tps = json['tps'];
    dpt = json['dpt'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    tingkat = json['tingkat'];
    wilayahName = json['wilayah_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['level'] = level;
    data['wilayah_type'] = wilayahType;
    data['daerah_id'] = daerahId;
    data['kecamatan_id'] = kecamatanId;
    data['wilayah_id'] = wilayahId;
    data['tps'] = tps;
    data['dpt'] = dpt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['tingkat'] = tingkat;
    data['wilayah_name'] = wilayahName;
    return data;
  }
}