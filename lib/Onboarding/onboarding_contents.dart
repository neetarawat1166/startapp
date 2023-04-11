class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Attempt the Quiz and get the result",
    image: "assets/images/image1.png",
    desc: "Remember to keep track of your accomplishments.",
  ),
  OnboardingContents(
    title: "View Books",
    image: "assets/images/image2.png",
    desc:
        "Don't forget to solve your doubts with BV Doubtnut",
  ),
  OnboardingContents(
    title: "Know your College",
    image: "assets/images/image3.png",
    desc:
        "Let's Hustle",
  ),
];