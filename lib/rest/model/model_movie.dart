class MovieModel {
  int? id;
  String? url;
  String? name;
  Image? image;


  MovieModel(
      {this.id,
      this.url,
      this.name,
      this.image,
  });

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }

    return data;
  }
}


class Image {
  String? medium;
  String? original;

  Image({this.medium, this.original});

  Image.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medium'] = this.medium;
    data['original'] = this.original;
    return data;
  }
}


