// ignore_for_file: use_build_context_synchronously

import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_vendor/screens/adminscreen.dart';
import 'package:hotel_vendor/theme/colors.dart';
import 'package:hotel_vendor/utils/constants.dart';
import 'package:hotel_vendor/widgets/button.dart';
import 'package:hotel_vendor/widgets/hotel_type.dart';
import 'package:hotel_vendor/widgets/location_textfield.dart';
import 'package:hotel_vendor/widgets/textfield.dart';
import 'package:logger/logger.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _infoController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _hotelemailController = TextEditingController();
  final TextEditingController _locationNameController = TextEditingController();
  final TextEditingController _hotelNameController = TextEditingController();

  int selectedValue = 1;
  String selectedFile = "";
  bool isLoading = false;
  String uploadedImageThumbnail = "";

  Uint8List image = Uint8List(0);
  // List of amenities and their selected states
  final Map<String, bool> amenities = {
    'Wi-Fi': false,
    'Parking': false,
    'Swimming Pool': false,
    'Gym': false,
    'Breakfast': false,
    'Air Conditioning': false,
  };

  String? _cupboards;
  String? _wardrobe;
  String? _accommodationOnly;
  String? _freeBreakfast;
  String? _freeDinner;
  String? _freeLunch;

  Future<void> _selectImage() async {
    try {
      final FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);
      if (result != null && result.files.isNotEmpty) {
        setState(() {
          selectedFile = result.files.first.name;
          image = result.files.first.bytes!;
        });
      }
    } catch (e) {
      Logger().d(e);
      throw Exception(e);
    }
  }

  Future<void> uploadImageToCloud(Uint8List streamImage, BuildContext context,
      String hotelname, String hotellocation, String hotelthumbnail) async {
    try {
      setState(() {
        isLoading = true;
      });
      if (streamImage.isNotEmpty) {
        final storageRef = FirebaseStorage.instance.ref().child(
            "hotel storage/${DateTime.now().millisecondsSinceEpoch}_$selectedFile");
        final uploadTask = storageRef.putData(streamImage);
        final snapshot = await uploadTask.whenComplete(() => null);

        final imageUrl = await snapshot.ref.getDownloadURL();
        Logger().d("Uploaded Image URL: $imageUrl");
        if (imageUrl.isNotEmpty) {
          await firestore
              .collection("admins")
              .doc(mAuth.currentUser?.uid)
              .update({
            "hotelname": hotelname,
            "hotelthumbnail": imageUrl,
            "hotellocation": hotellocation,
          });
          setState(() {
            isLoading = false;
          });
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Image uploaded successfully: $imageUrl")),
        );
      } else {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("No image selected")),
        );
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      Logger().d(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to upload image: $e")),
      );
      throw Exception(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Location',
              style: GoogleFonts.montserrat(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            MyTextField(
                height: 50,
                hintText: 'Hotel Name',
                controller: _hotelNameController,
                obscureText: false),
            const SizedBox(height: 10),
            LocationTextField(
                prefixIcon: const Icon(Icons.location_city),
                height: 50,
                hintText: 'Hotel Location',
                controller: _locationNameController,
                obscureText: false),
            const SizedBox(height: 50),
            Text(
              "What would you like to List?",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TypeOptions(
              text: 'Hotel',
              value: 1,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value ?? 1;
                });
              },
            ),
            TypeOptions(
              text: 'Resort',
              value: 2,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value ?? 2;
                });
              },
            ),
            TypeOptions(
              text: 'Bungalow',
              value: 3,
              groupValue: selectedValue,
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value ?? 3;
                });
              },
            ),
            const SizedBox(height: 50),
            Text(
              'Select Amenities',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: amenities.keys.map((String key) {
                return CheckboxListTile(
                  title: Text(key),
                  value: amenities[key],
                  activeColor: AppColors.green1,
                  onChanged: (bool? value) {
                    setState(() {
                      amenities[key] = value ?? false;
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 50),
            Text(
              'Basic Information',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MyTextField(
                height: 35,
                hintText: 'Stay/Hotel Name',
                controller: _infoController,
                obscureText: false),
            const SizedBox(height: 50),
            Text(
              'Contact Details',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 30),
            MyTextField(
                height: 35,
                hintText: 'Contact Number',
                controller: _contactController,
                obscureText: false),
            const SizedBox(height: 30),
            MyTextField(
                height: 35,
                hintText: 'Hotel Email Address',
                controller: _hotelemailController,
                obscureText: false),
            const SizedBox(height: 10),
            Text('Property Description',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                )),
            const SizedBox(height: 10),
            MyTextField(
                height: 35,
                hintText: 'Property Description',
                controller: _infoController,
                obscureText: false),
            const SizedBox(height: 50),
            Text(
              'Room Description',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
                height: 35,
                hintText: 'Room Type',
                controller: _infoController,
                obscureText: false),
            const SizedBox(height: 10),
            MyTextField(
                height: 35,
                hintText: 'Base Price',
                controller: _infoController,
                obscureText: false),
            const SizedBox(height: 50),
            Text(
              'Upload Property Image',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            MyButton(
              text: 'Select Image',
              width: 200,
              height: 50,
              onPressed: () {
                _selectImage();
              },
            ),
            const SizedBox(height: 20),
            Image.memory(
              image,
              height: 200,
              width: 200,
              errorBuilder: (context, error, stackTrace) {
                return const Text("No Image Selected");
              },
            ),
            const SizedBox(height: 20),
            Text(selectedFile.isEmpty ? "No Image Selected" : selectedFile),
            const SizedBox(height: 30),
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : MyButton(
                    text: 'Submit',
                    width: 200,
                    height: 50,
                    onPressed: () async {
                      try {
                        await uploadImageToCloud(
                          image,
                          context,
                          _hotelNameController.text.trim(),
                          _locationNameController.text.trim(),
                          uploadedImageThumbnail,
                        );

                        // After the upload is complete, navigate to another page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AdminScreen(), // Replace NextPage with your destination widget
                          ),
                        );
                      } catch (e) {
                        Logger().d(e);
                      }
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioButtons(String title, String? groupValue) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title),
          Row(
            children: <Widget>[
              Radio<String>(
                value: 'Yes',
                groupValue: groupValue,
                onChanged: (String? value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Text('Yes'),
              Radio<String>(
                value: 'No',
                groupValue: groupValue,
                onChanged: (String? value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
              const Text('No'),
            ],
          ),
        ],
      ),
    );
  }
}
