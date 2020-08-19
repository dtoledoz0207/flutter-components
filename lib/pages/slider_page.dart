import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => new _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _sliderValue = 100.0;

  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(
              child: _createImage()
            )
          ],
        ),
      ),
    );
  }


  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image size',
      //divisions: 20,
      value: this._sliderValue,
      min: 10.0,
      max: 300.0,
      onChanged: (this._blockCheck) ? null : (value) {
        setState(() {
          this._sliderValue = value;
        });
      }
    );
  }

  Widget _createCheckbox() {
    /* return Checkbox(
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      }
    ); */

    return CheckboxListTile(
      title: Text('Block slider'),
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
      activeColor: Colors.indigoAccent,
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Block slider'),
      value: this._blockCheck,
      onChanged: (value) {
        setState(() {
          this._blockCheck = value;
        });
      },
      activeColor: Colors.indigoAccent,
    );
  }

  Widget _createImage() {
    return Image(
      width: _sliderValue,
      fit: BoxFit.contain,
      image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/aaa79357-9476-4c1d-b9a8-6e881f2449d3/dd9xhu8-d95692f3-7012-44f8-b5e9-9126838cad0e.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYWFhNzkzNTctOTQ3Ni00YzFkLWI5YTgtNmU4ODFmMjQ0OWQzXC9kZDl4aHU4LWQ5NTY5MmYzLTcwMTItNDRmOC1iNWU5LTkxMjY4MzhjYWQwZS5wbmcifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6ZmlsZS5kb3dubG9hZCJdfQ.TKQ22Db8qh8K_z5WkrMg2o0P7AK9Oj7XVn733iBK4z4')
    );
  }
}