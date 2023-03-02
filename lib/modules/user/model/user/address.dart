import 'dart:convert';

import 'geo.dart';

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  @override
  String toString() {
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }

  factory Address.fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
      Map<String, dynamic> data) {
    return Address(
      street: data['street'] as String?,
      suite: data['suite'] as String?,
      city: data['city'] as String?,
      zipcode: data['zipcode'] as String?,
      geo: data['geo'] == null
          ? null
          : Geo
              .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
                  data['geo'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic>
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets() {
    return {
      'street': street,
      'suite': suite,
      'city': city,
      'zipcode': zipcode,
      'geo': geo
          ?.toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(),
    };
  }

  factory Address.fromJson(String data) {
    return Address
        .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
            json.decode(data) as Map<String, dynamic>);
  }
  String toJson() => json.encode(
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets());

  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) {
    return Address(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }

  @override
  int get hashCode =>
      street.hashCode ^
      suite.hashCode ^
      city.hashCode ^
      zipcode.hashCode ^
      geo.hashCode;
}
