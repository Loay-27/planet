import 'package:untitled1/model/planets_model.dart';

List<PlanetsModel> list = List<PlanetsModel>.from((solarSystemData).map((e) => PlanetsModel.fromMap(e))).toList();