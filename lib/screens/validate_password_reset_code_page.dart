import 'package:esco/screens/forgot_password_page.dart';
import 'package:esco/screens/reset_code_validate_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValidatePasswordResetCodePage extends StatefulWidget {
  const ValidatePasswordResetCodePage({super.key});

  @override
  State<ValidatePasswordResetCodePage> createState() =>
      _ValidatePasswordResetCodePageState();
}

class _ValidatePasswordResetCodePageState
    extends State<ValidatePasswordResetCodePage> {
  final TextEditingController _digit1 = TextEditingController();
  final TextEditingController _digit2 = TextEditingController();
  final TextEditingController _digit3 = TextEditingController();
  final TextEditingController _digit4 = TextEditingController();
  final TextEditingController _digit5 = TextEditingController();

  final FocusNode _focus1 = FocusNode();
  final FocusNode _focus2 = FocusNode();
  final FocusNode _focus3 = FocusNode();
  final FocusNode _focus4 = FocusNode();
  final FocusNode _focus5 = FocusNode();

  @override
  void dispose() {
    _digit1.dispose();
    _digit2.dispose();
    _digit3.dispose();
    _digit4.dispose();
    _digit5.dispose();

    _focus1.dispose();
    _focus2.dispose();
    _focus3.dispose();
    _focus4.dispose();
    _focus5.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordPage()));
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade300),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 25.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Check your email',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'We sent a reset link to contact@dscode.com enter 5 digit code that mentioned in the email',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            inputFields(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const ResetCodeValidateSuccessPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.06,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFF648DDB)),
                  child: const Text(
                    'Verify Code',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Haven't got the mail yet? ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      /* Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));*/
                    },
                    child: const Text(' Resend email ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF648DDB),
                            decorationStyle: TextDecorationStyle.solid,
                            decorationThickness: 3,
                            color: Color(0xFF648DDB),
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0)),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget inputFields() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          oneDigitInputField(_digit1, _digit2, _focus1, _focus2, null),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          oneDigitInputField(_digit2, _digit3, _focus2, _focus3, _focus1),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          oneDigitInputField(_digit3, _digit4, _focus3, _focus4, _focus2),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          oneDigitInputField(_digit4, _digit5, _focus4, _focus5, _focus3),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          oneDigitInputField(_digit5, null, _focus5, null, _focus4),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
        ],
      ),
    );
  }

  Widget oneDigitInputField(TextEditingController controller, nextController,
      focusNode, nextFocusNode, prevoiusFocusNode) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey)),
        child: Focus(
          onKeyEvent: (node, event) {
            if (event.logicalKey == LogicalKeyboardKey.backspace) {
              if (controller.text.isNotEmpty) {
                controller.clear();
              } else {
                FocusScope.of(context).requestFocus(prevoiusFocusNode);
              }
            } else {
              if (controller.text.isNotEmpty) {
                FocusScope.of(context).requestFocus(nextFocusNode);
              }
            }
            return KeyEventResult.ignored;
          },
          child: TextFormField(
            focusNode: focusNode,
            maxLength: 1,
            controller: controller,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                counterText: '', border: InputBorder.none),
            onChanged: (value) {
              if (value.isNotEmpty) {
                FocusScope.of(context).requestFocus(nextFocusNode);
              }
            },
          ),
        ),
      ),
    );
  }
}
