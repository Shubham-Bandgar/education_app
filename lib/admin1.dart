import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Admin1(),
  ));
}

class Admin1 extends StatefulWidget {
  const Admin1({Key? key}) : super(key: key);

  @override
  _Admin1State createState() => _Admin1State();
}

class _Admin1State extends State<Admin1> {
  List<StaffData> staffList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Admin Panel"),
        actions: [
          // Add Staff button
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddStaffPage(),
                ),
              );

              if (result != null) {
                setState(() {
                  staffList.add(result);
                });
                // Show success message using a dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Success"),
                      content: Text("Data inserted successfully!"),
                      actions: [
                        GestureDetector(
                          child: TextButton(
                            onPressed: () {

                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin1()));
                            },
                            child: Text("OK"),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: staffList.map((staff) => StaffList(staffData: staff)).toList(),
      ),
    );
  }
}

class AddStaffPage extends StatefulWidget {
  @override
  _AddStaffPageState createState() => _AddStaffPageState();
}

class _AddStaffPageState extends State<AddStaffPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Create an instance of StaffData to store the form data
  final StaffData staffData = StaffData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Add Staff"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name Field
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (value) {
                  staffData.name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Qualification'),
                onSaved: (value) {
                  staffData.qualification = value!;
                },
              ),

              // Other form fields...

              SizedBox(height: 20),

              // Add Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    // Show success message using a dialog
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Success"),
                          content: Text("Data inserted successfully!"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(staffData);
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StaffData {
  String name = "";
  String qualification = "";
// Other fields...

// You may want to add a constructor to initialize the data, if needed.
}

class StaffList extends StatelessWidget {
  final StaffData staffData;

  StaffList({required this.staffData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Name: ${staffData.name}"),
        Text("Qualification: ${staffData.qualification}"),
        // Display other fields...
      ],
    );
  }
}
