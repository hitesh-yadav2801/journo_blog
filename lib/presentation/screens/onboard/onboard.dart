part of 'onboard_imports.dart';

@RoutePage()
class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  OnBoardViewModel onBoardViewModel = OnBoardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Image.asset(
                    MyAssets.mainLogo,
                    color: MyColors.primaryColor,
                    height: 42.h,
                    width: 139.w,
                  ),

                  62.h.heightBox,

                  PageView(
                    controller: onBoardViewModel.pageController,
                    children: const [
                      OnBoardFirst(),
                      OnBoardSecond(),
                      OnBoardThird()
                    ],
                  ).expand(),

                  61.h.heightBox,

                  PrimaryButton(
                    title: "Get Started",
                    onPressed: () => AutoRouter.of(context).push(
                        const AuthRoute(),
                    )
                  ),

                  61.h.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "Skip"
                          .text
                          .size(16)
                          .color(MyColors.primaryColor)
                          .fontWeight(FontWeight.w700)
                          .make(),

                      SmoothPageIndicator(
                          controller: onBoardViewModel.pageController,  // PageController
                          count:  3,
                          effect:  const WormEffect(
                            dotWidth: 10,
                            dotHeight: 10,
                            activeDotColor: MyColors.primaryColor,
                          ),  // your preferred effect
                          onDotClicked: (index){

                          }
                      ),

                      "Next"
                          .text
                          .size(16.sp)
                          .color(MyColors.primaryColor)
                          .fontWeight(FontWeight.w700)
                          .make(),
                    ],
                  )
                ],
              ),
            ),
          ),
    ));
  }
}
