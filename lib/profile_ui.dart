import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1721858125081-96344964c7a6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGlnaHQlMjBob3VzZXxlbnwwfHwwfHx8MA%3D%3D',
                ),
              ),
              Positioned(
                bottom: -60.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.black54,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          ListTile(
            title: Center(
              child: Text(
                'Business Owner Name',
                style: TextStyle(fontSize: 20),
              ),
            ),
            subtitle: Center(
              child: Text('Position', style: TextStyle(fontSize: 15)),
            ),
          ),
          SizedBox(height: 10),
          Stack(
            alignment: Alignment.center,
            children: [
              // Horizontal line
              Divider(color: Colors.black87, thickness: 1.5),
              // Floating button
              Align(
                alignment: Alignment.center,
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black87, width: 1.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text(
                    'Website Name',
                    style: TextStyle(fontSize: 15, color: Colors.black87),
                  ),
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightElevation: 0,
                  icon: Icon(Icons.copy, color: Colors.black87),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),

          // Container(),
          // Divider(),
          ListTile(
            title: Center(child: Text('About', style: TextStyle(fontSize: 20))),
            subtitle: Center(
              child: Text(
                'Lorem ipsum dolor sit, amet consectetur adipisicing elit. iusto, aspernatur exercitationem error a?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          SizedBox(height: 25),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     FloatingActionButton.extended(
          //       onPressed: () {
          //         ScaffoldMessenger.of(context).showSnackBar(
          //           const SnackBar(content: Center(child: Text("Gmail"))),
          //         );
          //       },
          //       icon: Icon(Icons.mail, color: Colors.white),
          //       label: Text(
          //         'Gmail',
          //         style: TextStyle(color: Colors.white, fontSize: 15),
          //       ),
          //       backgroundColor: Colors.black87,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //     SizedBox(width: 10),
          //     FloatingActionButton.extended(
          //       onPressed: () {
          //         makePhoneCall('+255673353890');
          //       },
          //       icon: Icon(Icons.phone, color: Colors.white),
          //       label: Text(
          //         'Call',
          //         style: TextStyle(color: Colors.white, fontSize: 15),
          //       ),
          //       backgroundColor: Colors.black87,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //   ],
          // ),
          Text('+255 123 456 789', style: TextStyle(fontSize: 17)),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FaIcon(FontAwesomeIcons.tiktok, color: Colors.white),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton.extended(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Center(child: Text("Contact saved")),
                    ),
                  );
                },
                icon: Icon(Icons.save_sharp, color: Colors.white),
                label: Text(
                  'Save Contact',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(width: 10),
              // IconButton(
              //   onPressed: () {},
              //   icon: FaIcon(
              //     FontAwesomeIcons.shareFromSquare,
              //     color: Colors.black87,
              //   ),
              // ),
              FloatingActionButton.extended(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Center(child: Text("Contact shared")),
                    ),
                  );
                },
                // icon: Icon(Icons.save_sharp, color: Colors.white),
                label: Icon(Icons.share, color: Colors.white),
                backgroundColor: Colors.black87,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
