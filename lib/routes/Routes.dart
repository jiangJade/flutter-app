import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/formPage/FormPage.dart';
import '../pages/searchComponent/SearchComponent.dart';

final routes={
  '/':(context,{arguments}) => Tabs(),
  '/form':(context)=>FormPage(),
  '/search': (context, {arguments})=>SearchComponent(arguments:arguments)
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder !=null) {
    if(settings.arguments !=null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    }else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};