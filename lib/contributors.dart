import 'package:flutter/material.dart';
import 'package:hacktoberfest_flutter/animations/bottom_animation.dart';
import 'package:hacktoberfest_flutter/util/restart_app.dart';
import 'package:hacktoberfest_flutter/widgets/custom_listTile.dart';

class Contributor extends StatelessWidget {
  // Add your Full Name in this list
  // Please do not remove any other name :)
  // final contributorsName = [

  // ];

  // final gitHubUserName = [];
  final Map<String, String> contributors = {
    'mhmzdev': 'Muhammad Hamza',
    'keshkaush': 'Garima Chandna',
    'garimachandna': 'Keshav Kaushik',
    'prateekmedia': 'Prateek SU',
    'SafuRaja7': 'Muhammad Saif Waheed Raja',
    'eqrakhattak': 'Eqra Khattak',
    'mkumail1': 'Muhammad Kumail',
    'aman1210': 'Aman Srivastava',
    'bairwa25': 'Ajay Bairwa',
    'Apoorv-cloud': 'Apoorv Maheshwari',
    'oussamabouchikhi': 'Oussama Bouchikhi',
    'Ayomilotunde': 'Adeoye Ayomide',
    'akifarhan': 'Muhammad Akif Farhan',
    'Zohaibb-m': 'Zohaib Munir',
    'iamfaatima': 'Fatima Shirazi',
    'haseebalisajid': 'Haseeb Ali Sajid',
    'sanxy': 'Yusuf Adefolahan',
    'rajitdeb': 'Rajit Deb',
    'alenjojo': 'Alen Jojo',
    'Samrat-Khan': 'Samrat Khan',
    'shobu95': 'Shoaib Ahmed',
    'Janhavi23': 'Janhavi Kulkarni',
    'ryuukenshi': 'Arjun Sinha',
    'Mujhtech': 'Muhideen Mujeeb',
    'HarisNazir': 'Haris Nazir',
    'zhiephie': 'Yudi Purwanto',
    'aasif1297': 'Muhammad Asif Jawaid',
    'mayukhsil': 'Mayukh Sil',
    'mtabishk': 'Muhammad Tabish Khanday',
    'alikarani': 'Ali Karani',
    'enzodanjour': 'Enzo Danjour',
    'amitverma-cf': 'Amit Verma',
    'UsamaEjaz0': 'Usama Ejaz',
    'onymousproduktions': 'AbuBakar Sheikh',
    'LaraibNoor': 'Laraib Noor',
    'Rishabh-Negi': 'Rishabh Negi',
    'AntoniKwok': 'Antoni Wijaya',
    'AmaldevAD': 'Amaldev M V',
    'Agushm': 'Agus Himawan',
    'Tusar6701': 'Tusar Ranjan Mahapatra',
    'Habeel786': 'Habeel Hashmi',
    'rithik-dev': 'Rithik Bhandari',
    'imuhammadzain': 'Muhammad Zain Qadri',
    'LondonTran': 'London Tran',
    'AdityaBirangal': 'Aditya Birangal',
    'sainiteshb': 'Sai Nitesh',
    'NA': 'Muhammad Zeeshan',
    'Akanksha1212': 'Akanksha Singh',
    'praneethfdo': 'Praneeth Fernando',
    'olaabdul': 'Abdullateef Olawale Sarafadeen',
    'kamal-kaur04': 'Kamalpreet Kaur',
    'harshalshree': 'Harshal Shree',
    'Thesohan': 'Sohan Kathait',
    'malavikasreekumar': 'Malavika Sreekumar',
    'ridaayaz': 'Rida Ayaz',
    'Nimesha1996': 'Nim Chathu',
    'ahmadkhan': 'Ahmad Khan',
    'razorcalhn': 'Md Zaid Ansari',
    'Hemant72': 'Hemant',
    'chakshu21': 'Chakshu Salgotra',
    'zeeshanmahar007': 'Mahar zeeshan',
    'iamhabee': 'Dada Abdulrasheed',
    'Steellow': 'Hannes Kinnunen',
    'ramcalm': 'Ram Gunasekaran A',
    'MaxiTechno1ogy': 'Maximilian Flechtner',
    'matheusc3m': 'Matheus Cavalcante Fernandes',
    'DipanshuKalra': 'Dipanshu Kalra',
    'GunvantGMC': 'Gunvant Chandratre',
    'hariprasad1003': 'Hari Prasad',
    'LRNZ09': 'Lorenzo Pieri',
    'denpufa': 'Rodolfo Dantas de Oliveira Bezerra',
    'iamhsntariq05': 'Muhammad Hassan Tariq',
    'malgwi': 'Sunday Malgwi',
    'imSanjaySoni': 'Sanjay Soni',
    'cucusgeek99': 'Atsuvia Marc',
    'arielroque': 'Ariel Roque',
    'nshutijean': 'Jean Nshuti',
    'iamsureshsharma': 'Suresh Sharma',
    'michaeldadzie': 'Michael Dadzie',
    'zwe-mun-htun': 'Zwe Mun Htun',
    'srishtiv27': 'Srishti Vashistha',
    'neha-ajith': 'Neha Ajith',
    'naveeramesh': 'Naveena Ramesh Vardhini',
    'shubham9672': 'Shubham Menroy',
  };

  @override
  Widget build(BuildContext context) {
    // print(contributorsName.length);
    // print(gitHubUserName.length);
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
          itemCount: contributors.length,
          itemBuilder: (context, index) {
            return WidgetAnimator(
              child: CustomListTile(
                contributorGitHubUserName: contributors.keys.elementAt(index),
                contributorName:
                    contributors[contributors.keys.elementAt(index)],
              ),
            );
          },
        ),
      ),
    );
  }
}
