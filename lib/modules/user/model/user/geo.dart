import 'dart:convert';

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  @override
  String toString() => 'Geo(lat: $lat, lng: $lng)';

  factory Geo.fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
      Map<String, dynamic> data) {
    return Geo(
      lat: data['lat'] as String?,
      lng: data['lng'] as String?,
    );
  }

  Map<String, dynamic>
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Geo.fromJson(String data) {
    return Geo
        .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
            json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets());

  Geo copyWith({
    String? lat,
    String? lng,
  }) {
    return Geo(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  int get hashCode => lat.hashCode ^ lng.hashCode;
}
