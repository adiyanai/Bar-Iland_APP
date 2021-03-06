import 'package:bar_iland_app/scoped-models/main.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../pages/services.dart';

class ServiceManager extends StatelessWidget {
  final MainModel model;
  ServiceManager(this.model);

  @override
  Widget build(BuildContext context) {
    // Fetch all the possible locations of the services on Bar Ilan University.
    model.fetchServicesLocations();
    // Fetch all the services on Bar Ilan University.
    model.fetchServices();
    return DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            centerTitle: true,
            title:
                  Text('שירותי האוניברסיטה'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(MdiIcons.formatListBulletedType),
                  text: 'לפי סוג שירות',
                ),
                Tab(
                  icon: Icon(Icons.location_on),
                  text: 'לפי מיקום',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Services(model, "לפי סוג שירות"),
              Services(model, "לפי מיקום")
            ],
          ),
        ),
      ),
    );
  }
}
