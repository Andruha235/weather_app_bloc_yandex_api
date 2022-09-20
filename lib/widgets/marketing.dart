import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container marketing() {
  return Container(
      height: 120,
      width: 392,
      margin: EdgeInsets.only(top: 560),
      child: Row(
        children: [
          SizedBox(width: 20,),
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/images/img.png', width: 120, height: 120,)),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.home_repair_service, color: Colors.redAccent, size: 15,),
                  SizedBox(width: 10,),
                  InkWell(
                    child: Text('hh.ru'),
                    onTap: () => launchUrl(Uri.parse('https://hh.ru/resume/29f5b519ff0b382eb00039ed1f727279594c62')),
                  ),
                  SizedBox(width: 10,),
                  Text('Реклама', style: TextStyle(color: Colors.grey),),
                  SizedBox(width: 65),
                  CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      radius: 10,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.more_vert, color: Colors.grey[600], size: 18,),
                        onPressed: () {  },)
                  ),
                ],
              ),
              SizedBox(height: 5,),
              InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Резюме молодого ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'специалиста - Junior',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Flutter developer',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                onTap: () => launchUrl(Uri.parse('https://hh.ru/resume/29f5b519ff0b382eb00039ed1f727279594c62')),
              ),
            ],
          ),
          SizedBox(width: 20,),
        ],
      )
  );
}