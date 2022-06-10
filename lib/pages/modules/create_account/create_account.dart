import 'package:flutter/material.dart';
import 'package:space/pages/components/form_input.dart';
import '../../../utils/export.dart';
import '../../components/button_cta.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Crie sua conta'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(
            children: [
              FormInput(
                label: 'Nome',
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'Sobrenome',
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'E-mail',
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'Confirmar E-mail',
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'Senha',
                obscure: true,
              ),
              const SizedBox(height: 15),
              FormInput(
                label: 'Confirmar Senha',
                obscure: true,
              ),
              const SizedBox(height: 15),
              ButtonCta(onPressed: () {
                showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Turma: 3SIR'),
                          content: Text(popup),
                          actions: [
                            Center(
                              child: TextButton(
                                child: ButtonCta(
                                  onPressed: () => Navigator.pop(context),
                                  buttonText: 'VOLTAR',
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ),
                          ],
                        ),
                      );
              }, buttonText: 'Criar Conta')
            ],
          ),
        ),
      ),
    );
  }
}
