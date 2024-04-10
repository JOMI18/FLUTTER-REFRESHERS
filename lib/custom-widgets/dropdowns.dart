import 'package:flutter/material.dart';

class Dropdowns extends StatefulWidget {
  const Dropdowns({Key? key}) : super(key: key);

  @override
  _DropdownsState createState() => _DropdownsState();
}

class _DropdownsState extends State<Dropdowns> {
  String? selectedGender;
  String? selectedNationality;
  String? selectedCountryCode;

  List<String> genders = ['Male', 'Female', 'Other'];
  List<String> nationalities = ['USA', 'Canada', 'UK', 'Germany', 'France'];
  List<String> countryCodes = ['+1', '+44', '+49', '+33'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handling Dropdowns'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Gender:'),
              DropdownButtonFormField<String>(
                value: selectedGender,
                onChanged: (newValue) {
                  setState(() {
                    selectedGender = newValue;
                  });
                },
                items: genders.map((gender) {
                  return DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text('Nationality:'),
              DropdownButtonFormField<String>(
                value: selectedNationality,
                onChanged: (newValue) {
                  setState(() {
                    selectedNationality = newValue;
                  });
                },
                items: nationalities.map((nationality) {
                  return DropdownMenuItem<String>(
                    value: nationality,
                    child: Text(nationality),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text('Country Code:'),
              DropdownButtonFormField<String>(
                value: selectedCountryCode,
                onChanged: (newValue) {
                  setState(() {
                    selectedCountryCode = newValue;
                  });
                },
                items: countryCodes.map((countryCode) {
                  return DropdownMenuItem<String>(
                    value: countryCode,
                    child: Text(countryCode),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
