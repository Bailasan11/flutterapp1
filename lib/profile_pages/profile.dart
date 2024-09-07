import 'package:flutter/material.dart';
import 'package:flutterapp1/profile_pages/Account.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1D1D1D),
      child: Center(
        child: Container(
          width: 370,
          height: 500,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xFF346A2E),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('images/22.jpg'), // تأكد من وجود الصورة في المسار الصحيح
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Name : Xxxxxxxx', // استبدل باسم المستخدم
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                'Email : xxxx@gmail.com', // استبدل ببريد المستخدم
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text('Account', style: TextStyle(color: Colors.white)),
                trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
    MaterialPageRoute(builder: (context) => const Account()),
                  );
                },
              ),
              ListTile(
                title: const Text('Notification', style: TextStyle(color: Colors.white)),
                trailing: Switch(
                  value: notificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      notificationsEnabled = value; // تغيير حالة الإشعارات
                    });
                  },
                ),
              ),
              // يمكنك إضافة المزيد من ListTile هنا
            ],
          ),
        ),
      ),
    );
  }
}
