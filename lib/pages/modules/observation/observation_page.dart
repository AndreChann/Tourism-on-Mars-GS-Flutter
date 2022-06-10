import 'package:flutter/material.dart';
import 'package:space/utils/export.dart';
import '../../components/form_input.dart';
import '../../components/list_card.dart';
import '../../components/observation.dart';
import '../../model/observation_place.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController placeController = TextEditingController();
  TextEditingController observationController = TextEditingController();
  FocusNode placeFocus = FocusNode();
  FocusNode observationFocus = FocusNode();

  List<ObservationRegister> ObservationRegisterList = [
    ObservationRegister(place: 'Sudoeste', observation: 'Avistamento de OVNI'),
    ObservationRegister(place: 'Norte', observation: 'Queda de meteorito'),
    ObservationRegister(place: 'Base 2', observation: 'Tempestade de poeira'),
  ];

  registerObservation({required String place, required String observation}) {
    setState(() {
      ObservationRegisterList.insert(
        0,
        ObservationRegister(
          place: place,
          observation: observation,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageTrip(
      title: titleObservation,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FormInput(
                label: 'Local',
                focusNode: placeFocus,
                userInputController: placeController,
                onEditingComplete: () {
                  observationFocus.nextFocus();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FormInput(
                label: 'Observação',
                focusNode: observationFocus,
                userInputController: observationController,
              ),
            ),
            const SizedBox(height: 10),
            ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 8,
                  );
                },
                shrinkWrap: true,
                itemCount: ObservationRegisterList.length,
                itemBuilder: (context, index) {
                  var registrarobservation = ObservationRegisterList[index];
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      child: ListCard(
                        leftText: registrarobservation.place,
                        rightText: registrarobservation.observation,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      botao: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add_location),
        onPressed: () {
          registerObservation(
              place: placeController.text, observation: observationController.text);
        },
      ),
    );
  }
}
