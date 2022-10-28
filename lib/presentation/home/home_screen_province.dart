import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/application/location/location_bloc.dart';
import 'package:learn_bloc/injection.dart';
import 'package:learn_bloc/presentation/location/location_page.dart';
import 'package:learn_bloc/shared/theme.dart';

class HomepageProvince extends StatelessWidget {
  const HomepageProvince({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Image.asset(
                "assets/cek_ongkir.png",
                width: 130,
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: orangeColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                },
                child: Text(
                  "Yok Cek Harga Disini",
                  style: secondaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
