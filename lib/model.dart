class Slist {
  String imgUrl;
  String titleName;
  String rating;
  bool isGreen;

  Slist(this.imgUrl, this.titleName, this.rating, this.isGreen);

  static List<Slist> generatedList() {
    return [
      Slist('images/girls3.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls4.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls5.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls6.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls7.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls8.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls9.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls10.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls11.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls13.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls14.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls15.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls16.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls17.jpg', 'For the\nLove of', '4.5', false),
      Slist('images/girls18.jpg', 'For the\nLove of', '4.5', false),
    ];
  }
}
