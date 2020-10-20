/*
Name: Alen Jojo
GitHub: alenjojo
Quote: Knowledge is power.
*/

import 'package:flutter/material.dart';

class Contributor extends StatelessWidget {

  // < Add your Full Name in the List[] >
  final contributorsName = [
    'Muhammad Hamza',
    'Alen Jojo'
    'Samrat Khan',
    'Shoaib Ahmed',
    'Janhavi Kulkarni'
    'Arjun Sinha'
    'Muhideen Mujeeb',
    'Haris Nazir',
    'Muhammad Hamza',
    'Yudi Purwanto',
    'Muhammad Saif Waheed Raja'
    'Muhammad Asif Jawaid',
    'Mayukh Sil',
    'Muhammad Tabish Khanday',
    'Ali Karani'
    'Enzo Danjour'
    'Amit Verma'
    'Usama Ejaz',
    'AbuBakar Sheikh',
    'Laraib Noor',
    'Rishabh Negi',    
    'Antoni Wijaya'
    'Amaldev M V',
    'Agus Himawan'
	  'Tusar Ranjan Mahapatra',
    'Habeel Hashmi',
    'Rithik Bhandari'
    'Muhammad Zain Qadri'
    'London Tran',
    'Aditya Birangal',
    'Sai Nitesh',
    'Muhammad Zeeshan',
    'Praneeth Fernando',
    'Md Zaid Ansari'
  ];

  // < Add your GitHub Username in the List[] >
  final gitHubUserName = [
    'm-hamzashakeel',
    'alenjojo'
    'Samrat-Khan',
    'shobu95',
    'Janhavi23'
    'ryuukenshi'
    'Mujhtech',
    'HarisNazir',
    'm-hamzashakeel',
    'zhiephie',
    'SafuRaja7'
    'aasif1297',
    'mayukhsil',
    'mtabishk',
    'alikarani'
    'enzodanjour'
    'amitverma-cf'
    'UsamaEjaz0',
    'onymousproduktions',
    'LaraibNoor',
    'Rishabh-Negi',
    'AntoniKwok'
    'AmaldevAD',
	  'Agushm',
    'Tusar6701',
    'Habeel786',
    'rithik-dev',
    'imuhammadzain',
    'LondonTran',
    'AdityaBirangal',
    'sainiteshb',
    'zeeshanmahar007',
    'praneethfdo',
    'razorcalhn'
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff183d5d),
      appBar: AppBar(
        backgroundColor: Color(0xff9c4668),
        title: Text("Hacktober Fest - Contributors"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.transparent,
                height: 10,
              ),
          padding: const EdgeInsets.all(8.0),
          itemCount: contributorsName.length,
          itemBuilder: (context, index) {
            return CustomListTile(
              contributorGitHubUserName: gitHubUserName[index],
              contributorName: contributorsName[index],
            );
          }),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String contributorName;
  final String contributorGitHubUserName;
  CustomListTile(
      {@required this.contributorGitHubUserName,
      @required this.contributorName});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      width: width * 0.7,
      height: height * 0.15,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Color(0xff9c4668), width: 3.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            contributorName,
            style: TextStyle(
                fontSize: height * 0.035,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Row(
            children: [
              Image.asset(
                'assets/github.png',
                height: height * 0.03,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                contributorGitHubUserName,
                style: TextStyle(fontSize: height * 0.025),
              )
            ],
          )
        ],
      ),
    );
  }
}
