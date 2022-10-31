import 'package:dar_alaman/models/file.dart';
import 'package:dar_alaman/models/person.dart';
import 'package:flutter/material.dart';

import '../../components/container.dart';
import '../../components/row.dart';


class PI_page extends StatefulWidget {

  PI_page({Key? key}) : super(key: key);

  @override
  State<PI_page> createState() => _PI_pageState();
}

class _PI_pageState extends State<PI_page> {

  late Person person;
  late FilePerson filePerson;

  @override
  void initState() {
    person = Person(name: 'name',
        sex: 'sex',
        dateOfBirth: 'dateOfBirth',
        mobileNumber: 'mobileNumber',
        nationality: 'nationality',
        address: 'address');
    filePerson =
        FilePerson(person: person, tokenNumber: '1', fileNumber: 'DR008756');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stepper(
            type: StepperType.horizontal,
            steps: [
              Step(title: const Text('information'), content: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextContainer(flexContainer: 1,
                              textContainer: 'TOKEN No : ${filePerson
                                  .tokenNumber}',
                              fontSize: 15),
                          const SizedBox(
                            width: 5,
                          ),
                          const TextContainer(flexContainer: 2,
                              textContainer: "PATIENT'S FILE",
                              fontSize: 20),
                          const SizedBox(
                            width: 5,
                          ),
                          TextContainer(flexContainer: 1,
                              textContainer: 'FILE No : ${filePerson
                                  .fileNumber}',
                              fontSize: 15),
                        ],
                      ),
                      RowFile(
                        englishText: 'Name : ',
                        medianValue: person.name,
                        arabicText: 'الأسم : ',),
                      RowFile(
                        englishText: 'Date of Birth : ',
                        medianValue: person.dateOfBirth,
                        arabicText: 'تاريخ الميلاد : ',),
                      RowFile(
                        englishText: 'Sex : ',
                        medianValue: person.sex,
                        arabicText: 'الجنس : ',),
                      RowFile(
                        englishText: 'Mobile No : ',
                        medianValue: person.mobileNumber,
                        arabicText: 'رقم الهاتف : ',),
                      RowFile(
                        englishText: 'Nationality : ',
                        medianValue: person.nationality,
                        arabicText: 'الجنسية : ',),
                      RowFile(
                        englishText: 'Address : ',
                        medianValue: person.address,
                        arabicText: 'العنوان : ',),
                    ],
                  ),
                ),
              ),
              ),
            ],
          )
      ),
    );
  }
}
