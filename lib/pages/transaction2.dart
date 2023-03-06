import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';




class Transaction2 extends StatefulWidget {
  const Transaction2({super.key, transaction});

  @override
  TransactionState createState() => TransactionState();
}

class TransactionState extends State<Transaction2> {
  //TextEditingController _dateEditingController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime.now(),
      onConfirm: (date) {
        setState(() {
          _selectedDate = date;
        });
      },
      currentTime: _selectedDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('Transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF2F1256),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //////////////////////////Start part 1 Date Picker//////////////////////////////////////////////////////////
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1.0,

                    child: Container(
                      width: 200,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: _showDateTimePicker,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2F1256),
                              minimumSize: const Size(120, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Start Date'),
                                  const SizedBox(width: 2),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    child: Text(
                                      // ignore: unnecessary_null_comparison
                                      _selectedDate != null
                                          ? DateFormat('dd/MM/yy').format(_selectedDate)
                                          : 'DD/MM/YY',
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2F1256),
                              minimumSize: const Size(120, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                              ),
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Start Date',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  // const SizedBox(width: 10),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    child: Expanded(
                                      child: TextFormField(
                                        keyboardType: TextInputType.datetime,
                                        decoration: const InputDecoration(
                                          hintText: 'DD/MM/YY',
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //////////////////////////End part 1 Date Picker//////////////////////////////////////////////////////////
                  //////////////////////////Start part 2//////////////////////////////////////////////////////////
                  const SizedBox( width: 10.0, height: 25.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 5,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.person_outlined, color: Color(0xFF2F1256)),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'User Name or Phone Number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //////////////////////////End part 2//////////////////////////////////////////////////////////
                  //////////////////////////Start part 3//////////////////////////////////////////////////////////
                  const SizedBox( width: 10.0, height: 25.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 5,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.sim_card_outlined, color: Color(0xFF2F1256)),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            icon: const SizedBox.shrink(), //added to remove default dropdown icon
                            items: <String>['Airtel', 'BSNL', 'Jio', 'V!']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            decoration: const InputDecoration(
                              hintText: 'Select operator',
                              border: InputBorder.none,
                            ),
                            onChanged: (String? value) {
                              // ToDo something when an option is selected
                            },
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down_circle_outlined, color: Color(0xFF2F1256)),
                      ],
                    ),
                  ),
                  //////////////////////////End Part 3//////////////////////////////////////////////////////////
                  //////////////////////////Start Part 4//////////////////////////////////////////////////////////
                  const SizedBox( width: 10.0, height: 25.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 4,
                          blurRadius: 5,
                          offset: const Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_outline, color: Color(0xFF2F1256)),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            icon: const SizedBox.shrink(), //added to remove default dropdown icon
                            items: <String>['Active', 'Inactive']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            decoration: const InputDecoration(
                              hintText: 'Select Status',
                              border: InputBorder.none,
                            ),
                            onChanged: (String? value) {
                              // ToDo something when an option is selected
                            },
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down_circle_outlined, color: Color(0xFF2F1256)),
                      ],
                    ),
                  ),
                  //////////////////////////End Part 4//////////////////////////////////////////////////////////
                  ////////////////////////////Start Part 5//////////////////////////////////////////////////////////
                  const SizedBox(height: 30.0),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text(
                              "Username",
                              style: TextStyle(
                                color: Color(0xFF2F1256),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "Commission",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF2F1256),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.0),
                            child: Text(
                              "Created On",
                              style: TextStyle(
                                color: Color(0xFF2F1256),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ////////////////////////////End Part 5 words//////////////////////////////////////////////////////////
                  //              const SizedBox(height: 45.0),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.11),

                  ElevatedButton(
                    onPressed: () {
                      // Todo.
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2F1256),
                      minimumSize: const Size(120, 65),
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),


                  ),
////////////////////////////End Part 6 Search Button//////////////////////////////////////////////////////////
                ],
              ),
            ),
          ),
        ),
      ),
      ////////////////////////////Start Part 6 Footer//////////////////////////////////////////////////////////
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        color: const Color(0xFF2F1256),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.home_filled,
              size: 30,
              color: Colors.white70,
            ),
            Icon(
              Icons.account_balance_wallet_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.qr_code_scanner_outlined,
              size: 30,
              color: Colors.white70,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white70,
            ),
            Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
      ),
      ////////////////////////////End Part 6 Footer//////////////////////////////////////////////////////////
    );
  }
}
