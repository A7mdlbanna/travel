import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'core/bloc_observer.dart';
import 'data/network/network_connection.dart';
import 'data/utils/app_local_storage.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  connectivity.initialise();
  await AppLocalStorage.init();

  runApp(MyApp());
  Bloc.observer = MyBlocObserver();
}
