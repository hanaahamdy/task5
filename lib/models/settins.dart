import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4_cis/language.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  var languageChosen;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.table_rows_sharp),
      ),
      body: ListView(
        children: [
          ListTile(
              leading: Text(
                "Account Info",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              )),
          ListTile(
              leading: Text(
                "Saved Addresses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              )),
          ListTile(
              leading: Text(
                "Change email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              )),
          ListTile(
              leading: Text(
                "change password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              )),
          Card(
            elevation: 15,
            child: ListTile(
                leading: Text("Notification"),
                trailing: CupertinoSwitch(
                  onChanged: (val) {},
                  value: true,
                  activeColor: Colors.orange,
                )),
          ),
//          Padding(
//            padding: const EdgeInsets.all(12),
//            child: DropdownButton(hint: Text("l"),
//              items: language.map((valueItem) {
//                return DropdownMenuItem(
//                  value: valueItem,
//                  child: Text(valueItem),
//                );
//              }).toList(),
//              onChanged: (newvalue) {
//                setState(() {
//                  languageChosen=newvalue;
//                });
//              },
//              value: languageChosen,
//            ),
//          ),
          DropdownButton(items: Language.languageList()
              .map<DropdownMenuItem<Language>>((lang) =>
              DropdownMenuItem(child: Row(children: [Text(lang.language)],), value: lang,))
              .toList(), onChanged: (Language? language){
            changeLanguage(language);
          })

         , ListTile(
            onTap: () {},
            title: Text(
              "country",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text("Egypt", style: TextStyle(color: Colors.orange)),
          ),
        ],
      ),
    );
  }

  void changeLanguage(Language? language) {print(language!.languageCode);}
}
