class Story {
  final String imageName, name;
  final bool isViewed;

  Story({required this.imageName, required this.isViewed, required this.name});

  List<Story> stories = [
    Story(
        imageName: "lib/assets/img/stories/story_8.jpg",
        isViewed: false,
        name: "Bilawal"),
    Story(
        imageName: "lib/assets/img/stories/story_9.jpg",
        isViewed: true,
        name: "ImranK"),
    Story(
        imageName: "lib/assets/img/stories/story_10.jpg",
        isViewed: false,
        name: "Sharif"),
    Story(
        imageName: "lib/assets/img/stories/story_5.jpg",
        isViewed: true,
        name: "Diesel"),
    Story(
        imageName: "lib/assets/img/stories/story_4.jpg",
        isViewed: false,
        name: "Marwat"),
    Story(
        imageName: "lib/assets/img/stories/story_3.jpg",
        isViewed: true,
        name: "MQM"),
  ];
}
