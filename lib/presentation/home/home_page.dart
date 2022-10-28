import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_bloc/application/profile/bloc/profileb_bloc.dart';
import 'package:learn_bloc/domain/auth/model/login_response.dart';
import 'package:learn_bloc/domain/core/user/model/user_response.dart';
import 'package:learn_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:learn_bloc/utils/constants.dart' as constants;

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late LoginResponse _loginResponse;
  // _loadProfilebEvent() {
  //   BlocProvider.of<ProfilebBloc>(context)
  //       .add(const ProfilebEvent.getAllUserData());
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _loadProfilebEvent();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final _data = GetStorage().read(constants.USER_LOCAL_KEY);
    _loginResponse = LoginResponse.fromJson(jsonDecode(_data));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          //NOTE : makusd dari .. adalah ketika masuk ke kelas ini maka kita akan langsung menyuruh nya memanggil event getAllUserData()  gitu....
          ProfilebBloc()..add(const ProfilebEvent.getAllUserData()),
      child: BlocConsumer<ProfilebBloc, ProfilebState>(
        listener: (context, state) {
          state.maybeMap(
              orElse: () {},
              isLoading: (value) {
                debugPrint("is Loading");
              },
              isSuccess: (value) {
                (value.userResponse.toJson());
              });
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => _homePageError(context),
              isLoading: (e) => _homePageLoading(),
              isSuccess: (value) => _homePageScaffold(value.userResponse.data),
              isError: (value) => _homePageError(context));
        },
      ),
    );
  }

  Scaffold _homePageError(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Something Wrong"),
            IconButton(
              onPressed: () {
                context
                    .read<ProfilebBloc>()
                    .add(const ProfilebEvent.getAllUserData());
              },
              icon: const Icon(Icons.replay),
            )
          ],
        ),
      ),
    );
  }

  Scaffold _homePageScaffold(List<UserData>? _data) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loginResponse.token),
        actions: [
          IconButton(
              onPressed: () {
                GetStorage().erase();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: ListView.builder(
          // shrinkWrap: true,
          itemCount: _data?.length,
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(_data![index].avatar.toString())),
                title: Text(_data[index].firstName.toString()),
                subtitle: Text(_data[index].email.toString()),
              )),
    );
  }
}

Scaffold _homePageLoading() {
  return const Scaffold(body: Center(child: CircularProgressIndicator()));
}
