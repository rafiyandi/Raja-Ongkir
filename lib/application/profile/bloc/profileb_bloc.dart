import 'package:bloc/bloc.dart';
import 'package:learn_bloc/domain/core/user/model/user_response.dart';
import 'package:learn_bloc/infrastucture/profile/profile_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profileb_event.dart';
part 'profileb_state.dart';
part 'profileb_bloc.freezed.dart';

class ProfilebBloc extends Bloc<ProfilebEvent, ProfilebState> {
  ProfilebBloc() : super(const _Initial());
  final ProfileRepository _profileRepository = ProfileRepository();

  @override
  Stream<ProfilebState> mapEventToState(
    ProfilebEvent event,
  ) async* {
    yield* event.map(
        started: (value) async* {},
        getAllUserData: (value) async* {
          yield const ProfilebState.isLoading();
          //Get data dari API
          final _result = await _profileRepository.getAllUserData();
          //if error yield error state
          //if success yield success state
          //atau lakukan filter data menggunakan either yaitu function fold
          yield _result.fold((l) => ProfilebState.isError(l),
              (r) => ProfilebState.isSuccess(r));
        });
  }
}
