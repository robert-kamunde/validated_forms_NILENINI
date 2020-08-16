import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:validation_form/constants.dart';
import 'login_page.dart';


// Create a Form widget.
class RegistrationForm extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  RegistrationFormState createState() {
    return RegistrationFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class RegistrationFormState extends State<RegistrationForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
       inAsyncCall: false,      
       child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 150.0,
                    child: Image.asset('assets/images/logo.jpg'),
                  ),
                ),
              ),            
              SizedBox(
                height: 15.0,
              ),
    Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
            decoration: kTextFieldDecoration.copyWith(
                  hintText: 'First Name',
                  icon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
          ),
           SizedBox(
                height: 8.0,
              ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
            decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Last Name',
                  icon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
          ),
           SizedBox(
                height: 8.0,
              ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your email address';
              }
              return null;
            },
            decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your email',
                  icon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                ),
          ),
           SizedBox(
                height: 8.0,
              ),
           TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            decoration: kTextFieldDecoration.copyWith(
                  hintText: 'New password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                ),
          ),
           SizedBox(
                height: 8.0,
              ), 
           TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please confirm your password';
              }
              return null;
            },
            decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Confirm password',
                  icon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                ),
          ),   
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RoundedButton(
              colour: Colors.green,
              title: 'Submit',
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
            ),
          ),
          FlatButton(
                child: Text("Already Have an Account"),
                onPressed: () {
                   Navigator.pushNamed(context, LoginForm.id);
                },
              ),
        ],
      ),
    ),
            ]
       )
      )
      )
    );
  }
}