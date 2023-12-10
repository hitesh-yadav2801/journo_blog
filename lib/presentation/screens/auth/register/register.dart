part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: FadedScaleAnimation(
            child: Column(
              children: [
                Image.asset(
                  MyAssets.mainLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),

                100.h.heightBox,

                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36),
                          topRight: Radius.circular(36)
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Register"
                            .text
                            .size(18)
                            .fontWeight(FontWeight.w700)
                            .color(MyColors.primaryColor)
                            .makeCentered(),
                        50.h.heightBox,

                        "Email".text.make(),
                        8.h.heightBox,
                        const VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.email, color: MyColors.primaryColor,),
                          hint: "example@mail.com",
                        ),
                        20.h.heightBox,

                        "Password".text.make(),
                        8.h.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,),
                        ),
                        20.h.heightBox,
                        "Confirm Password".text.make(),
                        8.h.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,),
                        ),
                        40.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: 220,
                                child: CheckboxListTile(
                                  contentPadding: EdgeInsets.zero,
                                  controlAffinity: ListTileControlAffinity.leading,
                                  value: false,
                                  onChanged: (value) {},
                                  title: "Remember Me".text.make(),
                                )
                            ),
                            "Forgot Password".text.size(14).make()
                          ],
                        ),
                        40.h.heightBox,
                        PrimaryButton(
                            title: "Login",
                            onPressed: () {}
                        ),
                        20.h.heightBox,
                        "Already have an account?"
                            .richText
                            .size(14)
                            .semiBold
                            .color(MyColors.primaryColor)
                            .withTextSpanChildren([
                           TextSpan(
                              text: " Login",
                              recognizer: TapGestureRecognizer()..onTap=() => AutoRouter.of(context).push(const LoginRoute()),
                              style: const TextStyle(fontWeight: FontWeight.bold)
                          )
                        ]).makeCentered()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
