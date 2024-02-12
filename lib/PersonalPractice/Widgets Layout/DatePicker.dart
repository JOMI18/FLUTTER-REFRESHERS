import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  //  Stateful widgets are dynamic widgets that can change their appearance in response
  //   to user interactions or when data changes.
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
  //  This state class holds the data and functionality for the date picker widget.
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selected Date:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select Date'),
            ),
          ],
        ),
      ),
    );
  }
}
