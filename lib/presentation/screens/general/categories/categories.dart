part of 'categories_imports.dart';// Replace with the correct import

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "categories".text.make(),
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 20,),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: "${index+1}".text.size(16).make(),
              title: "Enter".text.size(16).make(),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(FeatherIcons.edit2, color: Colors.green,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(FeatherIcons.trash, color: Colors.red,),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
