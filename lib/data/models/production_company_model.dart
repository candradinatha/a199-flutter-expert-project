import 'package:equatable/equatable.dart';

class ProductionCompanyModel extends Equatable {
  ProductionCompanyModel({
    this.id,
    this.logoPath,
    this.name,
    this.originCountry,
  });

  final int? id;
  final String? logoPath;
  final String? name;
  final String? originCountry;

  factory ProductionCompanyModel.fromJson(Map<String, dynamic> json) => ProductionCompanyModel(
    id: json["id"],
    logoPath: json["logo_path"],
    name: json["name"],
    originCountry: json["origin_country"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "logo_path": logoPath,
    "name": name,
    "origin_country": originCountry,
  };

  @override
  List<Object?> get props => [id, logoPath, name, originCountry];
}