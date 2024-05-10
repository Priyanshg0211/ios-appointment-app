import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime? selectedDate;
  List<Appointment> appointments = [];

  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final purposeController = TextEditingController();
  final linkController = TextEditingController();

  void _addAppointment() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        appointments.add(Appointment(
          date: selectedDate!,
          title: titleController.text,
          description: descriptionController.text,
          purpose: purposeController.text,
          link: linkController.text,
          isCompleted: false,
        ));
      });
      titleController.clear();
      descriptionController.clear();
      purposeController.clear();
      linkController.clear();
      selectedDate = null;
    }
  }

  void _toggleTaskCompletion(int index, bool? checked) {
    setState(() {
      appointments[index].isCompleted = checked ?? false;
    });
  }

  void _showDetailsDialog(Appointment appointment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          appointment.title,
          style: TextStyle(
            fontFamily: 'Codenextbold',
            fontSize: 18,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date: ${appointment.date.toString()}',
              style: TextStyle(
                fontFamily: 'Codenextbold',
                fontSize: 15,
              ),
            ),
            Text('Description: ${appointment.description}',
                style: TextStyle(
                  fontFamily: 'Codenextbold',
                  fontSize: 15,
                )),
            Text('Purpose: ${appointment.purpose}',
                style: TextStyle(
                  fontFamily: 'Codenextbold',
                  fontSize: 15,
                )),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

  void _showUpcomingAppointments() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Upcoming Events',
          style: TextStyle(
            fontFamily: 'Codenextbold',
            fontSize: 18,
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: appointments
                .map((appointment) => ListTile(
                      title: Text(
                        appointment.title,
                        style: TextStyle(
                          fontFamily: 'Codenextbold',
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(appointment.date.toString()),
                      onTap: () => _showDetailsDialog(appointment),
                    ))
                .toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Close',
              style: TextStyle(
                fontFamily: 'Codenextbold',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fill Form to \nSchedule Appointment',
                      style: TextStyle(
                        fontFamily: 'Codenextbold',
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          fontFamily: 'Codenext',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                        ),
                      ),
                      cursorColor: Color(0xff007B5D),
                      controller: titleController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontFamily: 'Codenext',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    TextFormField(
                      cursorColor: Color(0xff007B5D),
                      controller: descriptionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Purpose of Appointment',
                      style: TextStyle(
                          fontFamily: 'Codenext',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                        ),
                      ),
                      cursorColor: Color(0xff007B5D),
                      controller: purposeController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter purpose of meeting';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Additional Comments/Notes',
                      style: TextStyle(
                          fontFamily: 'Codenext',
                          color: Colors.grey,
                          fontSize: 15),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE7EAEB)),
                        ),
                      ),
                      cursorColor: Color(0xff007B5D),
                      controller: linkController,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff007B5D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now().add(Duration(days: 365)),
                            );
                            if (picked != null && picked != selectedDate) {
                              setState(() {
                                selectedDate = picked;
                              });
                            }
                          },
                          child: Text(
                            selectedDate == null
                                ? 'Select Date'
                                : 'Selected: ${selectedDate.toString()}',
                            style: TextStyle(
                              fontFamily: 'Codenextbold',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff007B5D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () => _addAppointment(),
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontFamily: 'Codenextbold',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff007B5D),
        foregroundColor: Colors.white,
        onPressed: _showUpcomingAppointments,
        tooltip: 'Upcoming Events',
        child: Icon(Icons.event),
      ),
    );
  }
}

class UpcomingAppointmentsList extends StatelessWidget {
  final List<Appointment> appointments;
  final Function(Appointment) showDetailsDialog;
  final Function(int, bool?) toggleTaskCompletion;

  const UpcomingAppointmentsList({
    required this.appointments,
    required this.showDetailsDialog,
    required this.toggleTaskCompletion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: appointments.map((appointment) {
        return Card(
          child: ListTile(
            title: Text(
              appointment.title,
              style: appointment.isCompleted
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : null,
            ),
            subtitle: Text(appointment.date.toString()),
            trailing: IconButton(
              icon: Icon(Icons.info),
              onPressed: () => showDetailsDialog(appointment),
            ),
            onTap: () => toggleTaskCompletion(
              appointments.indexOf(appointment),
              !appointment.isCompleted,
            ),
          ),
        );
      }).toList(),
    );
  }
}

class Appointment {
  final DateTime date;
  final String title;
  final String description;
  final String purpose;
  final String link;
  bool isCompleted;

  Appointment({
    required this.date,
    required this.title,
    required this.description,
    required this.purpose,
    required this.link,
    required this.isCompleted,
  });
}
