import 'package:flutter/material.dart';

class PagingPage extends StatefulWidget {
  const PagingPage({Key? key}) : super(key: key);

  @override
  _PagingPageState createState() => _PagingPageState();
}

class _PagingPageState extends State<PagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPagingView(),
    );
  }

  Widget _buildPagingView() {
    return PageView(
      children: [
        _buildPage(index: 1, color: Colors.green),
        _buildPage(index: 2, color: Colors.blue),
        _buildPage(index: 3, color: Colors.indigo),
        _buildPage(index: 4, color: Colors.red),
      ],
    );
  }

  Widget _buildPage({int? index, Color? color}) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: color,
      child: Text(
        '$index',
        style: TextStyle(fontSize: 132.0, color: Colors.white),
      ),
    );
  }
}
