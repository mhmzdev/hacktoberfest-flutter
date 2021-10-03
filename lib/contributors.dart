import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/animations/bottom_animation.dart';
import 'package:hacktoberfest_flutter/util/restart_app.dart';
import 'package:hacktoberfest_flutter/widgets/custom_listTile.dart';

class Contributor extends StatelessWidget {
  // Add your Full Name in this list
  // Please do not remove any other name :)
  final contributorsName = [
    'Dev Adnani',
    'Muhammad Hamza',
    'Garima Chandna',
    'Keshav Kaushik',
    'Prateek SU',
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
    'Agus Himawan',
    'Tusar Ranjan Mahapatra',
    'Habeel Hashmi',
    'Rithik Bhandari',
    'Muhammad Zain Qadri',
    'London Tran',
    'Aditya Birangal',
    'Sai Nitesh',
    'Muhammad Zeeshan',
    'Akanksha Singh',
    'Praneeth Fernando',
    'Abdullateef Olawale Sarafadeen',
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
    'Matheus Cavalcante Fernandes',
    'Dipanshu Kalra',
    'Gunvant Chandratre',
    'Hari Prasad',
    'Lorenzo Pieri',
    'Rodolfo Dantas de Oliveira Bezerra',
    'Muhammad Hassan Tariq',
    'Ahmad Khan',
    'Sunday Malgwi',
    'Sanjay Soni',
    // 'Atsuvia Marc',
    // 'Ariel Roque',
    // 'Jean Nshuti',
    // 'Suresh Sharma',
    'Michael Dadzie',
    'Zwe Mun Htun',
    'Srishti Vashistha',
    'Neha Ajith',
    'Naveena Ramesh Vardhini ',
    'Muhammad Hilmy AL Jauzy',
    'Pranav Nair'
        'Venkitesh S Anand'
  ];

  final gitHubUserName = [
    'Dev-Adnani',
    'mhmzdev',
    'garimachandna',
    'keshkaush',
    'prateekmedia',
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
    '',
    'Akanksha1212',
    'praneethfdo',
    '',
    'kamal-kaur04',
    'harshalshree',
    'Thesohan',
    'malavikasreekumar',
    'ridaayaz',
    'Nimesha1996',
    // 'olaabdul',
    // 'praneethfdo',
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
    // 'cucusgeek99',
    'michaeldadzie',
    'zwe-mun-htun',
    'srishtiv27',
    'neha-ajith',
    'naveeramesh',
    'hilmykun',
    'PranavNair01',
    'SoulPlayer23'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: BackButton(
              color: Color(0xfff74700),
              onPressed: () => RestartWidget.restartApp(context),
            ),
            pinned: true,
            expandedHeight: 220.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Hacktoberfest Contributors",
                style: TextStyle(
                  color: Color(0xfff74700),
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: Center(
                child: Image.asset(
                  'assets/banner2021.png',
                  height: 180.0,
                ),
              ),
            ),
          ),
        ],
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8.0),
          separatorBuilder: (context, index) =>
              Divider(color: Colors.transparent),
          itemCount: contributorsName.length,
          itemBuilder: (context, index) {
            return WidgetAnimator(
              child: CustomListTile(
                contributorGitHubUserName: gitHubUserName[index],
                contributorName: contributorsName[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
