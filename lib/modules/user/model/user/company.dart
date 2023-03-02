import 'dart:convert';

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  @override
  String toString() {
    return 'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
  }

  factory Company.fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
      Map<String, dynamic> data) {
    return Company(
      name: data['name'] as String?,
      catchPhrase: data['catchPhrase'] as String?,
      bs: data['bs'] as String?,
    );
  }

  Map<String, dynamic>
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets() {
    return {
      'name': name,
      'catchPhrase': catchPhrase,
      'bs': bs,
    };
  }

  factory Company.fromJson(String data) {
    return Company
        .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
            json.decode(data) as Map<String, dynamic>);
  }
  String toJson() => json.encode(
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets());

  Company copyWith({
    String? name,
    String? catchPhrase,
    String? bs,
  }) {
    return Company(
      name: name ?? this.name,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  int get hashCode => name.hashCode ^ catchPhrase.hashCode ^ bs.hashCode;
}
