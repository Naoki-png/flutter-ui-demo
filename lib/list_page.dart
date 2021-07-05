import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Contact> allContacts = [
    Contact(name: 'Isa Tusa', email: 'isa.tusa@me.com'),
    Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com'),
    Contact(name: 'Teresita Mccubbin', email: 'teresita.mccubbin@me.com'),
    Contact(name: 'Rhoda Hassinger', email: 'rhoda.hassinger@me.com'),
    Contact(name: 'Carson Cupps', email: 'carson.cupps@me.com'),
    Contact(name: 'Devora Nantz', email: 'devora.nantz@me.com'),
    Contact(name: 'Tyisha Primus', email: 'tyisha.primus@me.com'),
    Contact(name: 'Muriel Lewellyn', email: 'muriel.lewellyn@me.com'),
    Contact(name: 'Hunter Giraud', email: 'hunter.giraud@me.com'),
    Contact(name: 'Corina Whiddon', email: 'corina.whiddon@me.com'),
    Contact(name: 'Meaghan Covarrubias', email: 'meaghan.covarrubias@me.com'),
    Contact(name: 'Ulysses Severson', email: 'ulysses.severson@me.com'),
    Contact(name: 'Richard Baxter', email: 'richard.baxter@me.com'),
    Contact(name: 'Alessandra Kahn', email: 'alessandra.kahn@me.com'),
    Contact(name: 'Libby Saari', email: 'libby.saari@me.com'),
    Contact(name: 'Valeria Salvador', email: 'valeria.salvador@me.com'),
    Contact(name: 'Fredrick Folkerts', email: 'fredrick.folkerts@me.com'),
    Contact(name: 'Delmy Izzi', email: 'delmy.izzi@me.com'),
    Contact(name: 'Leann Klock', email: 'leann.klock@me.com'),
    Contact(name: 'Rhiannon Macfarlane', email: 'rhiannon.macfarlane@me.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allContacts.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.greenAccent,
            ),
            title: Text(
              allContacts[index].name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              allContacts[index].email,
              style: TextStyle(fontSize: 15.0),
            ),
          );
        });
  }
}

class Contact {
  Contact({required this.name, required this.email});
  final String name;
  final String email;
}
