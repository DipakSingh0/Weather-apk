import 'package:flutter/material.dart';

class LocationButton extends StatelessWidget {
  final Function(String) onLocationSelected;

  const LocationButton({
    Key? key, 
    required this.onLocationSelected
    }) : super(key: key);
   

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _showLocationDialog(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[100],
      ),
      child: const Text(
        "Change Location" , 
        style: TextStyle(
          color: Colors.black,
          // fontWeight: 
        ),),
      
    );
  }

  void _showLocationDialog(BuildContext context) {
    TextEditingController locationController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Enter Location"),
          content: TextField(
            controller: locationController,
            decoration: const InputDecoration(
              hintText: "Enter city name",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                String newLocation = locationController.text;
                if (newLocation.isNotEmpty) {
                  onLocationSelected(newLocation);
                  Navigator.of(context).pop();
                }
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
