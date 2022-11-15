

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Icon(Icons.blur_linear_outlined)
                ],
              ),
            ),
          ),
          Container(

            width: double.infinity,
            height: 200,
            child: Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://www.kindpng.com/picc/m/217-2173031_transparent-facebook-icons-png-transparent-facebook-logo-circle.png'),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/31-316551_google-calendar-door-unlock-timer-youtube-icon-png-circle.png'),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage('https://cdn4.iconfinder.com/data/icons/social-media-icons-the-circle-set/48/twitter_circle-512.png'),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/2048px-LinkedIn_icon_circle.svg.png'),
              ),
            ],),
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Text('chromicle',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w900),),
              Text('@amFOSS'),
              SizedBox(height: 10,),
              Text('Mobile App Developer and Open source enthusiastic',style: TextStyle(fontSize: 20),maxLines: 2,textAlign: TextAlign.center,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              
              width: double.infinity,
              height: 350,
              child: ListView(
                children: [
                  Menu_scroll(iconData: Icons.security,title: 'Privacy',),
                  Menu_scroll(iconData: Icons.history, title: 'Purchase History'),
                  Menu_scroll(iconData: Icons.help_outline_outlined, title: 'Help & Support'),
                  Menu_scroll(iconData: Icons.settings_outlined, title: 'Settings'),
                  Menu_scroll(iconData: Icons.manage_accounts_outlined, title: 'Invite a Friend'),
                  Menu_scroll(iconData: Icons.logout_outlined, title: 'Logout')
                ],
              ),
            ),
          )


        ]
      ),
    );
  }
}

class Menu_scroll extends StatelessWidget {
  final IconData iconData;
  final String title;

  const Menu_scroll({super.key, required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.grey.withOpacity(.5)
        ),
        height: 50,
        child: ListTile(
          leading: Icon(iconData,color: Colors.black,),
          title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
        )
      ),
    );
  }
}
