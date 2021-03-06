class PostModel {
  final int userId, id;
  final String title, body;

  PostModel(this.userId, this.id, this.title, this.body);

  factory PostModel.fromJson(Map json) {
    return PostModel(json['userId'], json['id'], json['title'], json['body']);
  }

  @override
  String toString() {
    return "id: $id";
  }
}
