import 'package:flutter/material.dart';
import 'package:flutter_map_example/pages/esri.dart';
import 'package:flutter_map_example/pages/home.dart';
import 'package:flutter_map_example/pages/map_controller.dart';
import 'package:flutter_map_example/pages/marker_anchor.dart';
import 'package:flutter_map_example/pages/polyline.dart';
import 'package:flutter_map_example/pages/tap_to_add.dart';

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return new Drawer(
    child: new ListView(
      children: <Widget>[
        const DrawerHeader(
          child: const Center(
            child: const Text("Flutter Map Examples"),
          ),
        ),
        new ListTile(
          title: const Text('OpenStreetMap'),
          selected: currentRoute == HomePage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, HomePage.route);
          },
        ),
        new ListTile(
          title: const Text('Add Pins'),
          selected: currentRoute == TapToAddPage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, TapToAddPage.route);
          },
        ),
        new ListTile(
          title: const Text('Esri'),
          selected: currentRoute == EsriPage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, EsriPage.route);
          },
        ),
        new ListTile(
          title: const Text('Polylines'),
          selected: currentRoute == EsriPage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, PolylinePage.route);
          },
        ),
        new ListTile(
          title: const Text('MapController'),
          selected: currentRoute == MapControllerPage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, MapControllerPage.route);
          },
        ),
        new ListTile(
          title: const Text('Marker Anchors'),
          selected: currentRoute == MarkerAnchorPage.route,
          onTap: () {
            Navigator.popAndPushNamed(context, MarkerAnchorPage.route);
          },
        ),
      ],
    ),
  );
}
