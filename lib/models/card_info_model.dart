import 'package:demirbank/models/owner_model.dart';

class CardInfoModel {
  String? bank;
  String? number;
  String? expireDate;
  OwnerModel? owner;
  String? type = 'master';

  CardInfoModel(this.bank, this.number, this.expireDate, this.owner, this.type);
}