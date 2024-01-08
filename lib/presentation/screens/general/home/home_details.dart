part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: "Netflix will charge money for password sharing"
            .text
            .ellipsis
            .make(),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(MyAssets.netflix),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                10.h.heightBox,
                "Netflix will charge money for password sharing"
                    .text
                    .bold
                    .xl2
                    .make(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    "147 Views".text.make(),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FeatherIcons.thumbsUp),
                      color: MyColors.secondaryColor,
                    ),
                    "0".text.make(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FeatherIcons.thumbsDown),
                      color: MyColors.primaryColor,
                    ),
                    "0".text.make(),
                  ],
                ),
                MyStrings.news.text.make()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
