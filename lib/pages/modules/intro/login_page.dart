import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/pages/components/form_input.dart';
import '../../../utils/export.dart';
import '../../components/button_cta.dart';
import '../create_account/create_account.dart';
import '../home/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/logo-space.png'),
                ),
              ), 
              Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(titleLogin,
                style: GoogleFonts.alef(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: FormInput(
                  label: 'E-mail',
                ),
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'Senha',
                obscure: true,
              ),
              const SizedBox(height: 40),
              ButtonCta(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  ); 
                },
                buttonText: 'Login',
              ),
              const SizedBox(height: 15),
              ButtonCta(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountPage(),
                    ),
                  );
                },
                buttonText: 'Criar conta',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
