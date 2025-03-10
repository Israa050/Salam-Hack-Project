import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class AddResourcePage extends StatefulWidget {
  const AddResourcePage({super.key});

  @override
  State<AddResourcePage> createState() => _AddresourceState();
}

class _AddresourceState extends State<AddResourcePage> {
  final formkeyresource = GlobalKey<FormState>();

  final descriptionController = TextEditingController();
  final locationController = TextEditingController();
  final quantityController = TextEditingController();
  final phoneController = TextEditingController();

  String? selectedType;
  String? selectedStatus;
  String? selectedUrgency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // const Color.fromRGBO(231, 225, 225, 1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          // Color.fromRGBO(231, 225, 225, 1),
          title: Center(
            child: Text(
              'Create A Post',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15,),
          child: Form(
            key: formkeyresource,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                        hintText: 'Title',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 40.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a title';
                      }
                      return null;
                    },
                  ),
                  verticalPadding(15),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                        hintText: 'Description',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 40.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                  ),
                                    verticalPadding(15),

                  TextFormField(
                    controller: locationController,
                    decoration: const InputDecoration(
                        hintText: 'Location',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a location';
                      }
                      return null;
                    },
                  ),
                                    verticalPadding(15),

                  TextFormField(
                    controller: quantityController,
                    decoration: const InputDecoration(
                      hintText: 'Quantity',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a quantity';
                      }
                      return null;
                    },
                  ),
                                    verticalPadding(15),

                  TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                        hintText: 'Phone',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)))),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a phone number';
                      }
                      return null;
                    },
                  ),
                                    verticalPadding(15),

                                     TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                        hintText: 'Type',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16.0)))),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter post\'s type';
                      }
                      return null;
                    },
                  ),
                                                      verticalPadding(15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Status',
                            style: TextStyle(fontSize: 25),
                          ),
                          Container(
                            height: 100,
                            width: 120,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: const InputDecoration(
                                hintText: 'pending',
                                filled: true,
                                // fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 20.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              items: <String>['pending ', 'done']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedType = newValue;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select a status';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'urgency',
                            style: TextStyle(fontSize: 25),
                          ),
                          Container(
                            height: 100,
                            width: 110,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: const InputDecoration(
                                hintText: 'High',
                                filled: true,
                                // fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              items: <String>['High', 'Medium', 'Low']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedUrgency = newValue;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select a urgency';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                 verticalPadding(5),

                  // Column(
                  //   children: [
                  //     Text(
                  //       'Status',
                  //       style: TextStyle(fontSize: 30),
                  //     ),
                  //     Container(
                  //       height: 100,
                  //       width: 130,
                  //       child: DropdownButtonFormField<String>(
                  //         isExpanded: true,
                  //         decoration: const InputDecoration(
                  //           hintText: 'Available',
                  //           filled: true,
                  //           //  fillColor: Colors.grey,
                  //           border: OutlineInputBorder(
                  //             borderSide:
                  //                 BorderSide(color: Colors.grey, width: 10.0),
                  //             borderRadius:
                  //                 BorderRadius.all(Radius.circular(10.0)),
                  //           ),
                  //         ),
                  //         items: <String>['Available', 'Done']
                  //             .map<DropdownMenuItem<String>>((String value) {
                  //           return DropdownMenuItem<String>(
                  //             value: value,
                  //             child: Text(value),
                  //           );
                  //         }).toList(),
                  //         onChanged: (String? newValue) {
                  //           setState(() {
                  //             selectedStatus = newValue;
                  //           });
                  //         },
                  //         validator: (value) {
                  //           if (value == null || value.isEmpty) {
                  //             return 'Please select a status';
                  //           }
                  //           return null;
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),

                                    verticalPadding(15),

                  MaterialButton(
                    height: 50,
                    minWidth: 400,
                    color: AppColors.primaryBlue,
                    textColor: Colors.white,
                    onPressed: () {
                      if (formkeyresource.currentState!.validate()) {
                        //sendShelterToServer();
                      }
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Post',
                      style: TextStyles.font18WhiteBold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
