import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/pages/components/gallery_app.dart';
import 'package:space/utils/export.dart';
import '../../components/button_cta.dart';
import '../guide/guide_page.dart';
import '../intro/login_page.dart';
import '../observation/observation_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context)
            .size
            .width, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Turma: 3SIR'),
                    content: const Text(popup),
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
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: 185,
                  height: 185,
                  child: Image.asset(
                    'assets/images/mars.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                titleHome,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26.0),
              child: Text(
                'Seleciona a opção desejada:',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ButtonCta(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GuidePage(),
                    ),
                  );
                },
                buttonText: 'VER GUIA DE VIAGEM',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ButtonCta(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListPage(),
                    ),
                  );
                },
                buttonText: 'REALIZAR OBSERVAÇÃO',
              ),
            ),            
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ButtonCta(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GalleryApp(),
                    ),
                  );
                },
                buttonText: 'GALERIA DE IMAGENS',
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      'Sobre a Tourism on Mars Company',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    onTap: () {
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
                    },
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 22),
                    child: ButtonCta(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      buttonText: 'SAIR',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
