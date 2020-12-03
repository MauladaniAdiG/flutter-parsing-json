import 'package:app/models/contacs.dart';
import 'package:app/serviceapi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ServiceApi serviceApi = ServiceApi();
  Contacts contacts = Contacts();

  Future loadApi() async {
    var reqApi = await serviceApi.parsingJson();
    if (reqApi == null) {
      print('error');
    } else {
      return reqApi;
    }
  }

  @override
  void initState() {
    super.initState();
    loadApi().then((value) {
      setState(() {
        contacts = value;
      });
      if (!mounted) return;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: contacts.contactsItemList.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              child: Column(
                children: [Text('yoo')],
              ),
            );
          }),
    );
  }
}
