class CategoryModel {
  final String name;
  final String shortDescription;
  final String fullDescription;
   final String location;
  final String contact;
  final String website;
  final String socialMedia;
  final String email;

  CategoryModel({
    required this.name,
    required this.shortDescription,
    required this.fullDescription,
     required this.location,
    required this.contact,
    required this.website,
    required this.socialMedia,
    required this.email,
  });

  // تحويل من JSON إلى كائن
  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      name: map['name'] ?? '',
      shortDescription: map['short_description'] ?? '',
      fullDescription: map['full_description'] ?? '',
      location:map['location'] ?? '',
      contact: map['contact'] ?? '',
      website: map['website'] ?? '',
      socialMedia: map['social_media'] ?? '',
      email: map['email'] ?? '',
    );
  }

  // تحويل من كائن إلى JSON
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'short_description': shortDescription,
      'full_description': fullDescription,
      'contact': contact,
      'website': website,
      'social_media': socialMedia,
      'email': email,
    };
  }
}
