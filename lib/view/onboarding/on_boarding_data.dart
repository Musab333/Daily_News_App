class OnBoardingData {
  final String image;
  final String titleDecription;
  final String subTitleDecription;

  OnBoardingData({
    required this.image,
    required this.titleDecription,
    required this.subTitleDecription,
  });
}

List<OnBoardingData> onBoardingDataList = [
  OnBoardingData(
    image: "assets/images/search2.svg",
    titleDecription: 'TitleDecription 1',
    subTitleDecription: 'SubDecription 1',
  ),
];
