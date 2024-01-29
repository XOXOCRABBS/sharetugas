class UserModel {
  final String? id;
  final String? nama;
  final String? posisi;
  final double? gajipokok;
  final double? uangmakan;
  final int? izin;

  const UserModel({
    this.id,
    required this.nama,
    required this.posisi,
    required this.gajipokok,
    required this.uangmakan,
    required this.izin
  });

  toJson(){
    return{
      "Nama": nama,
      "Posisi": posisi,
      "Gaji Pokok": gajipokok,
      "Uang Makan": uangmakan,
      "Izin": izin,
    };
  }
}