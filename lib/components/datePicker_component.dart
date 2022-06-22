import 'package:flutter/material.dart';

class datePicker extends StatefulWidget {
  const datePicker({Key? key}) : super(key: key);

  @override
  State<datePicker> createState() => _datePickerState();
}

class _datePickerState extends State<datePicker> {
  DateTime date = DateTime(2022, 12, 24);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(56, 48, 77, 1.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Row(
        children: [
          Icon(Icons.calendar_month),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Text('${date.day}/${date.month}/${date.year}'),
          )
        ],
      ),
      onPressed: () async {
        DateTime? newDate = await showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            builder: (context, child) => Theme(
                  data: ThemeData().copyWith(
                    colorScheme: const ColorScheme.dark(
                      primary: Colors.white,
                      onPrimary: Colors.greenAccent,
                      surface: Color.fromRGBO(30, 30, 65, 1.0),
                      onSurface: Colors.white,
                    ),
                    dialogBackgroundColor: Color.fromARGB(255, 49, 49, 111),
                  ),
                  child: child!,
                ));
        // 'Cancel' => null
        if (newDate == null) return;

        // 'OK' => DateTime
        setState(() => date = newDate);
      },
    );
  }
}
