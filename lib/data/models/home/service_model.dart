class ServiceModel {
  final String title;
  final String description;
  final String iconAsset;
  final String bgImg;


  ServiceModel({
    required this.title,
    required this.description,
    required this.iconAsset,
    required this.bgImg,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      title: json['title'] as String,
      description: json['description'] as String,
      iconAsset: json['iconAsset'] as String,
      bgImg: json['bgImg'] as String,
    );
  }
}
