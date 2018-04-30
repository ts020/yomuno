class Book {
  final int userId;
  final String title;
  final String story;
  Book({this.userId, this.title, this.story});

  factory Book.fromJSON(json) {
    return new Book(title:
    json['title'],
        story: json['story'],
        userId: json['userid']);
  }
}