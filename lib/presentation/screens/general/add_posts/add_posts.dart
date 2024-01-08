part of 'add_posts_imports.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Add Posts".text.make(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        foregroundColor: MyColors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.check,
            )
          )
        ],
      ),
      body: Column(
        children: [
          
        ],
      )
    );
  }
}
