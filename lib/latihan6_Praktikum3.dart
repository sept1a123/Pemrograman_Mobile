import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Pengguna'),
        ),
        body: UserList(),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      "nama": "Dwi Septiajayanti",
      "hobi": "Bersepeda",
      "foto": "https://i.mydramalist.com/6BVYd_5_c.jpg"
    },
    {
      "nama": "Jerome Polin",
      "hobi": "Ngoding",
      "foto":
          "https://asset.kompas.com/crops/sew-Wqp_ntWRCcegiKG-rljYWTs=/0x29:720x509/750x500/data/photo/2021/11/15/6191a30925f6b.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return UserCard(
          nama: users[index]['nama']!,
          hobi: users[index]['hobi']!,
          foto: users[index]['foto']!,
        );
      },
    );
  }
}

class UserCard extends StatelessWidget {
  final String nama;
  final String hobi;
  final String foto;

  UserCard({required this.nama, required this.hobi, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(foto),
        ),
        title: Text(nama),
        subtitle: Text(hobi),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
