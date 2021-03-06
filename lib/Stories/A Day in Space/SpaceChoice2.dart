import 'package:flutter/material.dart';
import 'package:interactive_story/Stories/A%20Day%20in%20Space/SpaceFinal.dart';
class SpaceChoice2 extends StatefulWidget {
  final choice1 ;
  final choice2 ;
  final display ;
  final res1;
  final res2;
  const SpaceChoice2({Key? key, this.choice1, this.choice2, this.display, this.res1, this.res2}) : super(key: key);

  @override
  _SpaceChoice2State createState() => _SpaceChoice2State();
}

class _SpaceChoice2State extends State<SpaceChoice2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
        title: Text('A Day in Space'),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( widget.display, style: TextStyle(color: Colors.black, fontSize: 20)),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.choice1, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SpaceFinal(display: widget.res1,)
                    ),
                    );
                  },
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text(widget.choice2, style: TextStyle(color: Colors.black, fontSize: 20)),
                  onPressed: () async {
                    await Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SpaceFinal(display: widget.res2,)
                    ),
                    );
                  },
                ),
              ],
            ),
          )
      ),
    );
  }
}
