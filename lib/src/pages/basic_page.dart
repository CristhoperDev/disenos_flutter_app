import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final _titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      ),
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
  }

  Widget _createTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago con un puente', style: _titleStyle),
                SizedBox(height: 5.0),
                Text('Un lago en alemania', style: _subTitleStyle),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 30.0,),
          Text('41', style: TextStyle(fontSize: 20.0),)
        ],
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _actions(Icons.call, 'CALL'),
        _actions(Icons.near_me, 'ROUTE'),
        _actions(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _actions(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 30.0,),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(color: Colors.blue, fontSize: 15.0, fontWeight: FontWeight.w400)),
      ],
    );
  }

  Widget _createText() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Text(
        'Sed fermentum sem nec commodo sagittis. Donec tincidunt elit libero, eget posuere elit sodales ac. In hac habitasse platea dictumst. Integer aliquam justo lorem, sit amet lobortis mi pellentesque vel. Mauris nec sapien quis tellus finibus mattis. Ut ullamcorper turpis vel feugiat iaculis. Cras vestibulum nulla at enim vestibulum sollicitudin. Quisque posuere mattis nisi, sed venenatis arcu cursus et. Donec eget consequat tellus.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
