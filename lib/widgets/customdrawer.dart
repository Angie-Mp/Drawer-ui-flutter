import 'package:flutter/material.dart';

import '../screen/indexroutes.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          child: Column(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFF0044FF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'),
                        radius: 35.0,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'James Martin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17.0),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          'Senior Graphic Designer',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.move_to_inbox),
                title: const Text('All Inboxes'),
                trailing: const Text(
                  '15',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              const SizedBox(
                height: 14,
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.local_post_office),
                title: const Text('Primary'),
                trailing: const Text(
                  '15',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              ),

              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.people),
                trailing: Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9BB9EF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      '14 new',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
                title: const Text('Social'),
                onTap: () {},
              ),
              //
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.local_offer),
                title: const Text('Promotions'),
                trailing: Container(
                  height: 25,
                  width: 65,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7EE1C0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Text(
                      '99+ new',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: Row(children: const [
                  Text(
                    '    All labels',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ]),
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                leading: const Icon(Icons.grade),
                title: const Text('Starred'),
                onTap: () {},
              ),

              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.label),
                title: const Text('Important'),
                trailing: const Text(
                  '1',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                leading: const Icon(Icons.send),
                title: const Text('Sent'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                leading: const Icon(Icons.file_upload),
                title: const Text('Outbox'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                leading: const Icon(Icons.insert_drive_file),
                title: const Text('Drafts'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.vertical_align_bottom),
                title: const Text('All emails'),
                trailing: const Text(
                  '99+',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                leading: const Icon(Icons.error),
                title: const Text('Spam'),
                trailing: const Text(
                  '99+',
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    )

        //
        );
  }
}
