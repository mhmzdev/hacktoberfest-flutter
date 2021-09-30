import 'package:flutter/material.dart';

class Contributor extends StatelessWidget {
  // < Add your Full Name in the List[] >
  final contributorsName = [
    'Muhammad Hamza',
    'Keshav Kaushik',
    'Muhammad Saif Waheed Raja',
    'Eqra Khattak',
    'Muhammad Kumail',
    'Aman Srivastava',
    'Apoorv Maheshwari',
    'Oussama Bouchikhi',
    'Adeoye Ayomide',
    'Muhammad Akif Farhan',
    'Zohaib Munir',
    'Fatima Shirazi',
    'Haseeb Ali Sajid',
    'Yusuf Adefolahan',
    'Rajit Deb',
    'Alen Jojo',
    'Ajay Bairwa',
    'Samrat Khan',
    'Shoaib Ahmed',
    'Janhavi Kulkarni',
    'Arjun Sinha',
    'Muhideen Mujeeb',
    'Haris Nazir',
    'Yudi Purwanto',
    'Muhammad Asif Jawaid',
    'Mayukh Sil',
    'Muhammad Tabish Khanday',
    'Ali Karani',
    'Enzo Danjour',
    'Amit Verma',
    'Usama Ejaz',
    'AbuBakar Sheikh',
    'Laraib Noor',
    'Rishabh Negi',
    'Antoni Wijaya',
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
    'Akanksha Singh',
    'Praneeth Fernando',
    'Abdullateef Olawale Sarafadeen',
    'Praneeth Fernando',
    'Kamalpreet Kaur',
    'Harshal Shree',
    'Sohan Kathait',
    'Malavika Sreekumar',
    'Rida Ayaz',
    'Nim Chathu',
    'Ahmad Khan',
    'Md Zaid Ansari',
    'Muhammad Zeeshan',
    'Dada Abdulrasheed',
    'Hemant',
    'Chakshu Salgotra',
    'Hannes Kinnunen',
    'Ram Gunasekaran A',
    'Maximilian Flechtner',
    'Matheus Cavalcante Fernandes'
        'Dipanshu Kalra',
    'Gunvant Chandratre',
    'Hari Prasad',
    'Lorenzo Pieri',
    'Rodolfo Dantas de Oliveira Bezerra',
    'Muhammad Hassan Tariq',
    'Ahmad Khan',
    'Sunday Malgwi',
    'Sanjay Soni',
    'Atsuvia Marc',
    'Ariel Roque',
    'Jean Nshuti',
    'Suresh Sharma',
    'Michael Dadzie',
    'Zwe Mun Htun'
    'Victor Ajibade'
  ];

  // < Add your GitHub Username in the List[] >
  final gitHubUserName = [
    'm-hamzashakeel',
    'keshkaush',
    'SafuRaja7',
    'eqrakhattak',
    'mkumail1',
    'aman1210',
    'bairwa25',
    'Apoorv-cloud',
    'oussamabouchikhi',
    'Ayomilotunde',
    'akifarhan',
    'Zohaibb-m',
    'iamfaatima',
    'haseebalisajid',
    'sanxy',
    'rajitdeb',
    'alenjojo',
    'Samrat-Khan',
    'shobu95',
    'Janhavi23',
    'ryuukenshi',
    'Mujhtech',
    'HarisNazir',
    'zhiephie',
    'aasif1297',
    'mayukhsil',
    'mtabishk',
    'alikarani',
    'enzodanjour',
    'amitverma-cf',
    'UsamaEjaz0',
    'onymousproduktions',
    'LaraibNoor',
    'Rishabh-Negi',
    'AntoniKwok',
    'AmaldevAD',
    'Agushm',
    'Tusar6701',
    'Habeel786',
    'rithik-dev',
    'imuhammadzain',
    'LondonTran',
    'AdityaBirangal',
    'sainiteshb',
    'Akanksha1212',
    'praneethfdo',
    'kamal-kaur04',
    'harshalshree',
    'Thesohan',
    'malavikasreekumar',
    'ridaayaz',
    'Nimesha1996',
    'olaabdul',
    'praneethfdo',
    'rmahmadkhan',
    'razorcalhn',
    'zeeshanmahar007',
    'iamhabee',
    'Hemant72',
    'chakshu21',
    'Steellow',
    'ramcalm',
    'MaxiTechno1ogy',
    'matheusc3m',
    'DipanshuKalra',
    'GunvantGMC',
    'hariprasad1003',
    'LRNZ09',
    'denpufa',
    'iamhsntariq05',
    'rmahmadkhan',
    'malgwi',
    'imSanjaySoni',
    'cucusgeek99',
    'michaeldadzie',
    'zwe-mun-htun'
    'vikkybliz'
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
