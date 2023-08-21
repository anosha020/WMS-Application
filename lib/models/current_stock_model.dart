class CurrentStockModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  CurrentStockModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  CurrentStockModel.fromJson(Map<String, dynamic> json) {
    pageCount = json['page-count'];
    recordsSize = json['records-size'];
    skipRecords = json['skip-records'];
    rowCount = json['row-count'];
    arrayCount = json['array-count'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(new Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page-count'] = this.pageCount;
    data['records-size'] = this.recordsSize;
    data['skip-records'] = this.skipRecords;
    data['row-count'] = this.rowCount;
    data['array-count'] = this.arrayCount;
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Records {
  String? uid;
  ADClientID? aDClientID;
  ADClientID? aDOrgID;
  String? created;
  ADClientID? createdBy;
  bool? isActive;
  ADClientID? mAttributeSetInstanceID;
  ADClientID? mLocatorID;
  ADClientID? mProductID;
  double? qtyOnHand;
  String? updated;
  ADClientID? updatedBy;
  String? dateMaterialPolicy;
  String? modelName;

  Records(
      {this.uid,
      this.aDClientID,
      this.aDOrgID,
      this.created,
      this.createdBy,
      this.isActive,
      this.mAttributeSetInstanceID,
      this.mLocatorID,
      this.mProductID,
      this.qtyOnHand,
      this.updated,
      this.updatedBy,
      this.dateMaterialPolicy,
      this.modelName});

  Records.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    aDClientID = json['AD_Client_ID'] != null
        ? new ADClientID.fromJson(json['AD_Client_ID'])
        : null;
    aDOrgID = json['AD_Org_ID'] != null
        ? new ADClientID.fromJson(json['AD_Org_ID'])
        : null;
    created = json['Created'];
    createdBy = json['CreatedBy'] != null
        ? new ADClientID.fromJson(json['CreatedBy'])
        : null;
    isActive = json['IsActive'];
    mAttributeSetInstanceID = json['M_AttributeSetInstance_ID'] != null
        ? new ADClientID.fromJson(json['M_AttributeSetInstance_ID'])
        : null;
    mLocatorID = json['M_Locator_ID'] != null
        ? new ADClientID.fromJson(json['M_Locator_ID'])
        : null;
    mProductID = json['M_Product_ID'] != null
        ? new ADClientID.fromJson(json['M_Product_ID'])
        : null;
    qtyOnHand = json['QtyOnHand'].toDouble();
    updated = json['Updated'];
    updatedBy = json['UpdatedBy'] != null
        ? new ADClientID.fromJson(json['UpdatedBy'])
        : null;
    dateMaterialPolicy = json['DateMaterialPolicy'];
    modelName = json['model-name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    if (this.aDClientID != null) {
      data['AD_Client_ID'] = this.aDClientID!.toJson();
    }
    if (this.aDOrgID != null) {
      data['AD_Org_ID'] = this.aDOrgID!.toJson();
    }
    data['Created'] = this.created;
    if (this.createdBy != null) {
      data['CreatedBy'] = this.createdBy!.toJson();
    }
    data['IsActive'] = this.isActive;
    if (this.mAttributeSetInstanceID != null) {
      data['M_AttributeSetInstance_ID'] =
          this.mAttributeSetInstanceID!.toJson();
    }
    if (this.mLocatorID != null) {
      data['M_Locator_ID'] = this.mLocatorID!.toJson();
    }
    if (this.mProductID != null) {
      data['M_Product_ID'] = this.mProductID!.toJson();
    }
    data['QtyOnHand'] = this.qtyOnHand;
    data['Updated'] = this.updated;
    if (this.updatedBy != null) {
      data['UpdatedBy'] = this.updatedBy!.toJson();
    }
    data['DateMaterialPolicy'] = this.dateMaterialPolicy;
    data['model-name'] = this.modelName;
    return data;
  }
}

class ADClientID {
  String? propertyLabel;
  int? id;
  String? identifier;
  String? modelName;

  ADClientID({this.propertyLabel, this.id, this.identifier, this.modelName});

  ADClientID.fromJson(Map<String, dynamic> json) {
    propertyLabel = json['propertyLabel'];
    id = json['id'];
    identifier = json['identifier'];
    modelName = json['model-name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['propertyLabel'] = this.propertyLabel;
    data['id'] = this.id;
    data['identifier'] = this.identifier;
    data['model-name'] = this.modelName;
    return data;
  }
}
