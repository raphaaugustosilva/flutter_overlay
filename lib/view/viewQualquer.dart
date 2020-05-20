import 'package:flutter/material.dart';

class ViewQualquer extends StatefulWidget {
  final Function onPressedBotaoFechar;
  final Color corFundo;
  ViewQualquer(this.onPressedBotaoFechar, {this.corFundo});

  @override
  _ViewQualquerState createState() => _ViewQualquerState();
}

class _ViewQualquerState extends State<ViewQualquer> {
  OverlayEntry overlayTeste;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.corFundo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 80),
            Text("Flutter", style: TextStyle(color: Colors.red)),
            Text("Mello", style: TextStyle(color: Colors.red)),
            RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                if (widget.onPressedBotaoFechar != null) widget.onPressedBotaoFechar();
              },
            ),
          ],
        ),
      ),
    );
  }
}
