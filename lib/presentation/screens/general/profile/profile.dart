part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        foregroundColor: MyColors.white  ,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.logOut).pOnly(right: 10),
          )

        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 450,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      MyAssets.netflix,
                    ),
                  ),
                  10.h.heightBox,
                  "Hitesh Yadav".text.bold.white.xl2.make(),
                  "admin@admin.com".text.white.xl.make(),
                  20.h.heightBox,
                  "Hitesh Kumar Yadav is a software developer who is passionate about ML/AI and wants to learn new technology."
                      .text
                      .xl
                      .white
                      .make(),
                  20.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          "6".text.white.bold.xl3.make(),
                          "Posts".text.white.xl.make()
                        ]
                      ),
                      Column(
                          children: [
                            "0".text.white.bold.xl3.make(),
                            "Following".text.white.xl.make()
                          ]
                      ),
                      Column(
                          children: [
                            "6".text.white.bold.xl3.make(),
                            "Followers".text.white.xl.make()
                          ]
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "My Posts".text.xl3.bold.make(),
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9
                  ),
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Image.asset(MyAssets.netflix).cornerRadius(13),
                        6.h.heightBox,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Netflix will charge money for password sharing"
                                .text
                                .medium
                                .make()
                                .expand(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(FeatherIcons.moreVertical)
                            )
                          ],
                        )
                      ],
                    );
                  }
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
