class Photo {
  int? id;
  String? url;
  String? title;

  Photo(
    this.id,
    this.url,
    this.title,
  );

  Photo.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
