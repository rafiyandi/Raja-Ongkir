import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/application/location/location_bloc.dart';
import 'package:learn_bloc/domain/location/location_response.dart';
import 'package:learn_bloc/domain/location/province_data.dart';
import 'package:learn_bloc/injection.dart';
import 'package:learn_bloc/presentation/location/widgets/dropdown_location.dart';
import 'package:learn_bloc/shared/theme.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  String _errorMessage = '';

  List<DropdownMenuItem<LocationResultData>> _provinceFromListItem = [];
  List<DropdownMenuItem<LocationResultData>> _cityFromListItem = [];
  LocationResultData? _selectedFromProvince;
  LocationResultData? _selectedFromCity;

  String? _selectedCourier;

  List<DropdownMenuItem<LocationResultData>> _provinceToListItem = [];
  List<DropdownMenuItem<LocationResultData>> _cityToListItem = [];
  LocationResultData? _selectedToProvince;
  LocationResultData? _selectedToCity;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _weightController = TextEditingController();

  FocusNode _weightFN = FocusNode();

  void _fromLocationBlocListener(BuildContext context, LocationState state) {
    state.maybeMap(
        orElse: () {},
        cityDataOptions: (e) => e.cityProvince.fold(
              () => print("Is Loading"),
              (a) => a.fold(
                (l) => print("Error"),
                (r) {
                  _cityFromListItem = r.results
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text("${e.type} ${e.cityName}"),
                        ),
                      )
                      .toList();
                },
              ),
            ),
        provinceDataOptions: (e) {
          e.dataProvince.fold(
            () => () {},
            (a) => a.fold((l) {
              l.map(
                  notFound: (e) => _errorMessage = e.msg,
                  badRequest: (e) => _errorMessage = e.badRequest,
                  serverError: (e) => _errorMessage = "Server Error");
              FlushbarHelper.createError(message: _errorMessage)..show(context);
            }, (r) {
              _provinceFromListItem = r.results
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.province ?? "",
                        style: primaryTextStyle.copyWith(fontWeight: medium),
                      ),
                    ),
                  )
                  .toList();
            }),
          );
        });
  }

  void _toLocationBlocListener(BuildContext context, LocationState state) {
    state.maybeMap(
        orElse: () {},
        cityDataOptions: (e) => e.cityProvince.fold(
              () => print("Is Loading"),
              (a) => a.fold(
                (l) => print("Error"),
                (r) {
                  _cityToListItem = r.results
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text("${e.type} ${e.cityName}"),
                        ),
                      )
                      .toList();
                },
              ),
            ),
        provinceDataOptions: (e) {
          e.dataProvince.fold(
            () => () {},
            (a) => a.fold((l) {
              l.map(
                  notFound: (e) => _errorMessage = e.msg,
                  badRequest: (e) => _errorMessage = e.badRequest,
                  serverError: (e) => _errorMessage = "Server Error");
              FlushbarHelper.createError(message: _errorMessage)..show(context);
            }, (r) {
              _provinceToListItem = r.results
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.province ?? ""),
                    ),
                  )
                  .toList();
            }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: secondOrangColor,
        elevation: 1,
        title: Text(
          "Cek Ongkir",
          style: primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            //Akses From
            BlocProvider(
              create: (context) => getIt<LocationBloc>()
                ..add(LocationEvent.getLocationProvince()),
              child: BlocConsumer<LocationBloc, LocationState>(
                  listener: _fromLocationBlocListener,
                  builder: (context, state) {
                    return Column(
                      children: [
                        Text(
                          "From",
                          style: primaryTextStyle.copyWith(
                              fontSize: 20, fontWeight: semiBold),
                        ),
                        DropdownLocation<LocationResultData>(
                            hint: "Pilih Province",
                            dropDownItemList: _provinceFromListItem,
                            onChanged: (e) {
                              setState(() {
                                _selectedFromProvince = e!;
                                _selectedFromCity = null;
                                _cityFromListItem != null
                                    ? []
                                    : _cityFromListItem;
                              });
                              print(e?.province);
                              //disini kirim id provin ke event dan akan di isi ke state nantinya
                              context.read<LocationBloc>().add(
                                  LocationEvent.getLocationCity(
                                      provinceId: e?.provinceId ?? ""));
                            },
                            selectedLocation: _selectedFromProvince),
                        DropdownLocation(
                            hint: "Pilih City",
                            dropDownItemList: _cityFromListItem,
                            onChanged: (value) {
                              setState(() {
                                print(value);
                                _selectedFromCity =
                                    value as LocationResultData?;
                              });
                            },
                            selectedLocation: _selectedFromCity)
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),

            //Akses To
            BlocProvider(
              create: (context) => getIt<LocationBloc>()
                ..add(LocationEvent.getLocationProvince()),
              child: BlocConsumer<LocationBloc, LocationState>(
                  listener: _toLocationBlocListener,
                  builder: (context, state) {
                    return Column(
                      children: [
                        Text(
                          "To",
                          style: primaryTextStyle.copyWith(
                              fontSize: 20, fontWeight: semiBold),
                        ),
                        DropdownLocation<LocationResultData>(
                            hint: "Pilih Province",
                            dropDownItemList: _provinceToListItem,
                            onChanged: (e) {
                              setState(() {
                                _selectedToProvince = e!;
                                _selectedToCity = null;
                                _cityToListItem != null ? [] : _cityToListItem;
                              });
                              print(e?.province);
                              //disini kirim id provin ke event dan akan di isi ke state nantinya
                              context.read<LocationBloc>().add(
                                  LocationEvent.getLocationCity(
                                      provinceId: e?.provinceId ?? ""));
                            },
                            selectedLocation: _selectedToProvince),
                        DropdownLocation(
                            hint: "Pilih City",
                            dropDownItemList: _cityToListItem,
                            onChanged: (value) {
                              setState(() {
                                print(value);
                                _selectedToCity = value as LocationResultData?;
                              });
                            },
                            selectedLocation: _selectedToCity)
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                padding: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: orangeColor, width: 1))),
                child: TextFormField(
                  controller: _weightController,
                  focusNode: _weightFN,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Data harus diisi';
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration.collapsed(
                    hintText: "Weight gram",
                    hintStyle: subtitleGreyTextStyle,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            DropdownLocation<String>(
              hint: "Pilih Jenis Pengiriman",
              dropDownItemList: [
                DropdownMenuItem(
                  child: Text("JNE"),
                  value: 'jne',
                ),
                DropdownMenuItem(
                  child: Text("POS"),
                  value: 'pos',
                ),
                DropdownMenuItem(
                  child: Text("TIKI"),
                  value: 'tiki',
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCourier = value!;
                });
              },
              selectedLocation: _selectedCourier,
            ),
            SizedBox(
              height: 20,
            ),

            BlocProvider(
              create: (context) => getIt<LocationBloc>(),
              child: BlocConsumer<LocationBloc, LocationState>(
                  listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  getCostsOptions: (value) => value.costData.fold(
                      () => null,
                      (a) => a.fold(
                          (l) => print("Data Error" + l.toString()),
                          (r) => showDialog(
                              context: context,
                              builder: (context) {
                                return SimpleDialog(
                                  title: Text("Hasil Pencaharian"),
                                  children: (r.results.length == 0 ||
                                          r.results.isEmpty)
                                      ? [Text("No Data Shown")]
                                      : r.results[0].costs
                                          .map((e) => listItemofServices(e))
                                          .toList(),
                                );
                              }))),
                );
              }, builder: (context, state) {
                return Container(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: orangeColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      onPressed: () {
                        if (_selectedFromProvince == null ||
                            _selectedFromCity == null ||
                            _selectedToProvince == null ||
                            _selectedToCity == null) {
                          FlushbarHelper.createError(
                              message: "Pilih Provinsi dan Kota")
                            ..show(context);
                        }
                        print("From " + _selectedFromCity.toString());
                        print("To " + _selectedToCity.toString());

                        _autoValidation(_formkey, context);
                      },
                      child: Text(
                        "Cek Harga",
                        style: secondaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )),
                );
              }),
            )
          ],
        ),
      )),
    );
  }

  Widget listItemofServices(Costs e) => ListTile(
        title: Text(e.service.toString()),
        trailing: Text(e.cost[0].value.toString()),
        subtitle: Text(e.cost[0].etd.toString()),
      );

  Container noneDataGetProvinceWidget() {
    return Container(
      child: Text("Data nya none"),
    );
  }

  Expanded successGetProvinceWidget(ProvinceResponse r) {
    return Expanded(
      child: ListView.builder(
        itemCount: r.results.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(r.results[index].province ?? "tidak ada"),
          );
        },
      ),
    );
  }

  Container locationLoadingWidget() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Expanded errorGetProvinceWidget(String msg) {
    return Expanded(
      child: Container(
        child: Text(msg),
      ),
    );
  }

  void _autoValidation(GlobalKey<FormState> _formkey, BuildContext context) {
    if (_formkey.currentState!.validate()) {
      context.read<LocationBloc>().add(LocationEvent.getCosts(
          fromData: _selectedFromCity!,
          toData: _selectedToCity!,
          weight: int.parse(_weightController.text),
          courier: _selectedCourier ?? ""));
      print("Berhasil");
    } else {
      print('gagal');
    }
  }
}

// return Container(
//                     child: Column(
//                       children: [
//                         state.maybeMap(
//                             orElse: () => Container(
//                                   child: Text(
//                                       "TIdak ada data yang akan ditampilkan"),
//                                 ),
//                             provinceDataOptions: (e) {
//                               if (e.onLoading) {
//                                 return locationLoadingWidget();
//                               } else {
//                                 return e.dataProvince.fold(
//                                   () => noneDataGetProvinceWidget(),
//                                   (a) => a.fold(
//                                     (l) =>
//                                         errorGetProvinceWidget(_errorMessage),
//                                     (r) => successGetProvinceWidget(r),
//                                   ),
//                                 );
//                               }
//                             }),
//                         ElevatedButton(
//                             onPressed: () {
//                               context
//                                   .read<LocationBloc>()
//                                   .add(LocationEvent.getLocationProvince());
//                             },
//                             child: Text("Tekan Akuh Hai")),
//                       ],
//                     ),
//                   );
