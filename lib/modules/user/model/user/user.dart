import 'dart:convert';

import 'address.dart';
import 'company.dart';

class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, email: $email, address: $address, phone: $phone, website: $website, company: $company)';
  }

  factory UserModel.fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
      Map<String, dynamic> data) {
    return UserModel(
      id: data['id'] as int?,
      name: data['name'] as String?,
      username: data['username'] as String?,
      email: data['email'] as String?,
      address: data['address'] == null
          ? null
          : Address
              .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
                  data['address'] as Map<String, dynamic>),
      phone: data['phone'] as String?,
      website: data['website'] as String?,
      company: data['company'] == null
          ? null
          : Company
              .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
                  data['company'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic>
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'address': address
          ?.toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(),
      'phone': phone,
      'website': website,
      'company': company
          ?.toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(),
    };
  }

  factory UserModel.fromJson(String data) {
    return UserModel
        .fromId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets(
            json.decode(data) as Map<String, dynamic>);
  }

  String toJson() => json.encode(
      toId1NameLeanneGrahamUsernameBretEmailSincereAprilBizAddressStreetKulasLightSuiteApt556CityGwenboroughZipcode929983874GeoLat373159Lng811496Phone17707368031X56442WebsiteHildegardOrgCompanyNameRomagueraCronaCatchPhraseMultiLayeredClientServerNeuralNetBsHarnessRealTimeEMarkets());

  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
    Company? company,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
    );
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      email.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode ^
      company.hashCode;
}
