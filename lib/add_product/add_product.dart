import 'package:advert/components/custom_text_field.dart';
import 'package:advert/constants/app_sizes.dart';
import 'package:advert/services/date_time_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _name = TextEditingController();
  final _dateTime = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddProduct'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CustomTextField(
              hintext: 'title',
              controller: _title,
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'description',
              controller: _description,
              maxLines: 5,
            ),
            AppSizes.height10,
            CustomTextField(
<<<<<<< HEAD
              prefixIcon: const Center(child: Icon(Icons.photo_camera)),
              controller: _description,
              maxLines: 5,
            ),
            AppSizes.height10,
            CustomTextField(
=======
>>>>>>> 43e287a761c1d6bf83bf39e90c1dc83637bd4101
              hintext: 'name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'dateTime',
              controller: _dateTime,
              onTap: () async {
                await DateTimeService.showDateTimePicker(context, (value) {
                  _dateTime.text = value.toString();
                });
              },
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'phoneNumber',
              controller: _phoneNumber,
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'address',
              controller: _address,
            ),
          ],
        ),
      ),
    );
  }
}
