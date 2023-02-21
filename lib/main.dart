import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value= false;
  final GlobalKey<FormState> _formKey = GlobalKey();
  String Title = "";
  String FirstName = "";
  String LastName = "";
  String StreetNumber = "";
  String PostalCode = "";
  String Place = "";
  String ContactNumber = "";
  String Email = "";
  String Remarks = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        backgroundColor: Colors.greenAccent[400],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ), //IconButton
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child : SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Form(
                  key: _formKey,
                  child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Title*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              Title= value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Title';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'FirstName*'),
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'please enter firstname';
                            }
                          },
                          onFieldSubmitted: (value) {
                            setState(() {
                              Title = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'LastName*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              LastName = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter lastname';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'StreetNumber*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              StreetNumber = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter streetnumber';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'PostalCode*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              PostalCode = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter postalcode';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Place*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              Place = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter place';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'ContactNumber*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              ContactNumber = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter ContactNumber';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email*'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              Email = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter EmailAddress ';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Remarks'),
                          keyboardType: TextInputType.text,
                          onFieldSubmitted: (value) {
                            setState(() {
                              Remarks = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Remarks';
                            }
                            return null;
                          },
                        ),
                        CheckboxListTile(
                          title: Text("I agree that the VERT.ES and their sections contact me using the above data.I have taken note of the day protection declarationand can modify or revoke my consent at any time."),
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Submitting Data')),
                              );
                            }
                          },
                          child: const Text('Submit '),
                        ),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
