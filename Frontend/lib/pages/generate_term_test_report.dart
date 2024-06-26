import 'package:frontend/main.dart';
import 'package:flutter/material.dart';


// ignore: camel_case_types
class generate_term_test_reports extends StatefulWidget {
  generate_term_test_reports({Key key, this.title}) : super(key: key);
  final String title;
  State<StatefulWidget> createState() => new _generate_term_test_reportsState();
}

// ignore: camel_case_types
class _generate_term_test_reportsState extends State<generate_term_test_reports> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  String _status = '';

  final List<Map<String, String>> listOfColumns = [
    {"Name": "AANmbdfdfde", "Number": "1", "State": "YerAAmberAAAANumberAAAAANumberAAAus"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "AANmu", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "AA", "Number": "1", "State": "Yes"},
    {"Name": "BBBBBB", "Number": "2", "State": "no"},
    {"Name": "CCCCCC", "Number": "3", "State": "Yes"}
  ];
  //  List<String> _locations = ['Please choose a location', 'A', 'B', 'C', 'D']; // Option 1
//  String _selectedLocation = 'Please choose a location'; // Option 1


  List<String> _years = ['A', 'BC', 'B','C', 'D']; // Option 2
  String _selectedYear; // Option 2

  List<String> _terms = ['A', 'B', 'C', 'DC', 'D']; // Option 2
  String _selectedTerm; // Option 2

  List<String> _subjects = ['ALL'] + ['A', 'B', 'C', 'D']; // Option 2
  String _selectedSubject; // Option 2

  List<String> _sections = ['A',  'C', 'D']; // Option 2
  String _selectedSection; // Option 2

  List<String> _classes = ['ALL'] + ['A', 'B',  'D']; // Option 2
  String _selectedClass; // Option 2

  List<String> _students = ['ALL'] + ['A', 'B', 'C']; // Option 2
  String _selectedStudent; // Option 2

  @override
  Widget build(BuildContext context) {
    final SelectYearDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedYear,
        onChanged: (newValue) {
          setState(() {
            _selectedYear = newValue;
          });
        },
        items: _years.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final SelectTermDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedTerm,
        onChanged: (newValue) {
          setState(() {
            _selectedTerm = newValue;
          });
        },
        items: _terms.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final SelectSubjectDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedSubject,
        onChanged: (newValue) {
          setState(() {
            _selectedSubject = newValue;
          });
        },
        items: _subjects.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final SelectSectionDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedSection,
        onChanged: (newValue) {
          setState(() {
            _selectedSection = newValue;
          });
        },
        items: _sections.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final SelectClassDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedClass,
        onChanged: (newValue) {
          setState(() {
            _selectedClass = newValue;
          });
        },
        items: _classes.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final SelectStudentDropdown = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.cyanAccent,
      child: DropdownButton(
        hint: Text('select' ,
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.blue, fontWeight: FontWeight.bold)), // Not necessary for Option 1
        value: _selectedStudent,
        onChanged: (newValue) {
          setState(() {
            _selectedStudent = newValue;
          });
        },
        items: _students.map((location) {
          return DropdownMenuItem(
            child: new Text(location ,
                style: style.copyWith(
                    color: Colors.blue, fontWeight: FontWeight.bold)),
            value: location,
          );
        }).toList(),
      ),
    );

    final Submit = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.greenAccent,
      child: MaterialButton(
        //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          setState(() => this._status = 'loading');

          appAuth.login().then((result) {
            if (result) {
              setState(() => this._status = '');
              // Navigator.of(context).pushNamed('/teacher/student_to_bucket_sub');

            } else {
              setState(() => this._status = 'something went wrong ! try again');
            }
          });
        },
        child: Text('Submit',
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );

    final print = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(5.0),
      color: Colors.greenAccent,
      child: MaterialButton(
        //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          appAuth.login().then((result) {
            if (result) {//table is not empty
              // Navigator.of(context).pushNamed('/teacher/student_to_bucket_sub');
            } else {
              setState(() => this._status = 'Result Table is empty. nothing to print');
            }
          });
        },
        child: Text('Download Result sheet ',
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );

    return  Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body:  new SingleChildScrollView(
          child: new Center(
              child: new Container(
                //  color: Colors.white,
                  child: Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: [
                                  SizedBox(height: 40.0,
                                  child :Text('Year' ,
                                      style: style.copyWith(
                                          color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 40.0,
                                      child :Text('Term' ,
                                          style: style.copyWith(
                                              color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 40.0,
                                      child :Text('subject' ,
                                          style: style.copyWith(
                                              color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 40.0,
                                      child :Text('section' ,
                                          style: style.copyWith(
                                              color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 40.0,
                                      child :Text('class' ,
                                          style: style.copyWith(
                                              color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(height: 40.0,
                                    child :Text('Student' ,
                                        style: style.copyWith(
                                            color: Colors.blue, fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ) ,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectYearDropdown ,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectTermDropdown ,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectSubjectDropdown ,
                                  ),

                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectSectionDropdown ,
                                  ),

                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectClassDropdown ,
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                    //width: 400,
                                    child:SelectStudentDropdown ,
                                  ),

                                ],
                              ) ,
                      ],
                    ),
                          SizedBox(
                            height: 40.0,
                            //width: 400,
                            child:Submit ,
                          ),
                          SizedBox(height: 10.0),
                          Text('${this._status}',),


                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(

                              columns: [
                                DataColumn(label: Text('Rank')),
                                DataColumn(label: Text('Marks')),
                                DataColumn(label: Text('Name')),
                              ],
                              rows:
                              listOfColumns // Loops through dataColumnText, each iteration assigning the value to element
                                  .map(
                                ((element) => DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text(element["Name"])), //Extracting from Map element the value
                                    DataCell(Text(element["Number"])),
                                    DataCell(Text(element["State"])),
                                  ],
                                )),
                              )
                                  .toList(),
                            ),
                          )
                          ,
                          print,
                        ],
                      )
                  )
              )
          )

      ),
    );
  }
}
