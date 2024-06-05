// Dart imports:

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mind_meeting_app/screen/video_conference_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Users who use the same conferenceID can in the same conference.
  var conferenceDTextCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.black26,
          child: SizedBox(
            height: 250,
            width: 350,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text("Enter Conference ID",style: TextStyle(
                    fontSize: 23,color: Colors.black,fontWeight: FontWeight.w500
                  ),),
                ),

                Container(
                    margin: const EdgeInsets.only(top: 20),
                 height: 55,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 3.0, color: Colors.black12) ),
                  child: TextFormField(
                    controller: conferenceDTextCtrl,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      //hintText: 'Enter ID',
                      hintStyle: TextStyle(fontSize: 18,color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                SizedBox(
                  width: 200,
                  height: 55,
                  child: ElevatedButton(

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return VideoConferencePage(
                              conferenceID: conferenceDTextCtrl.text.trim(),
                            );
                          }),
                        );
                      },

                      style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),),


                      child: const Text('join',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all(Colors.indigo[400]),
// padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 100,vertical: 15)),),