part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Netflix will charge money for password sharing"
            .text
            .ellipsis
            .make(),
      ),
      body: Column(children: [
        Image.asset(MyAssets.netflix),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: "Netflix will charge money for password sharing"
              .text
              .bold
              .xl2
              .make(),
        ),
      ]),
    );
  }
}
