import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/JoblistingScreen.dart';
import 'package:flutter_project/Custom%20Widgets/app%20button.dart';


class EditJob extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top:89,left: 27,right: 27),
        child: Column(
          children: [
            Row(
              children: [

                GestureDetector(
                    onTap:()=>onback_press(context),
                    child: const Icon(Icons.arrow_back_ios,color: Colors.white)),
                const SizedBox(width: 31),
                const Text("Edit Job",
                    style: TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600))
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 31),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(color: const Color(0xff5D5D67), width: 1),
                    borderRadius: BorderRadius.circular(15)),

                child: const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      hintText:"Flutter Developer",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      border: InputBorder.none),
                )
            ),
            Container(
                height: 374,
                margin: const EdgeInsets.only(top: 25),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(color: const Color(0xff5D5D67), width: 1),
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                      hintText:"Lorem ipsum dolor sit amet......",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      border: InputBorder.none),
                )
            ),
            const SizedBox(height: 59),
            AppButton(label: "Update Job", onPress: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>JobListing()));

            })
          ],
        ),
      ),
    );
  }


}

void onback_press(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (_) => JobListing()));
}
