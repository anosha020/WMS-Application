class InventoryPickDetailModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  InventoryPickDetailModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  InventoryPickDetailModel.fromJson(Map<String, dynamic> json) {
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
  int? id;
  String? uid;
  ADClientID? aDClientID;
  ADClientID? aDOrgID;
  bool? isActive;
  String? created;
  ADClientID? createdBy;
  String? updated;
  ADClientID? updatedBy;
  ADClientID? mMovementID;
  ADClientID? mLocatorID;
  ADClientID? mLocatorToID;
  ADClientID? mProductID;
  int? movementQty;
  int? line;
  ADClientID? mAttributeSetInstanceID;
  int? confirmedQty;
  int? targetQty;
  int? scrappedQty;
  bool? processed;
  ADClientID? mAttributeSetInstanceToID;
  int? palletID;
  String? modelName;

  Records(
      {this.id,
      this.uid,
      this.aDClientID,
      this.aDOrgID,
      this.isActive,
      this.created,
      this.createdBy,
      this.updated,
      this.updatedBy,
      this.mMovementID,
      this.mLocatorID,
      this.mLocatorToID,
      this.mProductID,
      this.movementQty,
      this.line,
      this.mAttributeSetInstanceID,
      this.confirmedQty,
      this.targetQty,
      this.scrappedQty,
      this.processed,
      this.mAttributeSetInstanceToID,
      this.palletID,
      this.modelName});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    aDClientID = json['AD_Client_ID'] != null
        ? new ADClientID.fromJson(json['AD_Client_ID'])
        : null;
    aDOrgID = json['AD_Org_ID'] != null
        ? new ADClientID.fromJson(json['AD_Org_ID'])
        : null;
    isActive = json['IsActive'];
    created = json['Created'];
    createdBy = json['CreatedBy'] != null
        ? new ADClientID.fromJson(json['CreatedBy'])
        : null;
    updated = json['Updated'];
    updatedBy = json['UpdatedBy'] != null
        ? new ADClientID.fromJson(json['UpdatedBy'])
        : null;
    mMovementID = json['M_Movement_ID'] != null
        ? new ADClientID.fromJson(json['M_Movement_ID'])
        : null;
    mLocatorID = json['M_Locator_ID'] != null
        ? new ADClientID.fromJson(json['M_Locator_ID'])
        : null;
    mLocatorToID = json['M_LocatorTo_ID'] != null
        ? new ADClientID.fromJson(json['M_LocatorTo_ID'])
        : null;
    mProductID = json['M_Product_ID'] != null
        ? new ADClientID.fromJson(json['M_Product_ID'])
        : null;
    movementQty = json['MovementQty'];
    line = json['Line'];
    mAttributeSetInstanceID = json['M_AttributeSetInstance_ID'] != null
        ? new ADClientID.fromJson(json['M_AttributeSetInstance_ID'])
        : null;
    confirmedQty = json['ConfirmedQty'];
    targetQty = json['TargetQty'];
    scrappedQty = json['ScrappedQty'];
    processed = json['Processed'];
    mAttributeSetInstanceToID = json['M_AttributeSetInstanceTo_ID'] != null
        ? new ADClientID.fromJson(json['M_AttributeSetInstanceTo_ID'])
        : null;
    palletID = json['PalletID'];
    modelName = json['model-name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    if (this.aDClientID != null) {
      data['AD_Client_ID'] = this.aDClientID!.toJson();
    }
    if (this.aDOrgID != null) {
      data['AD_Org_ID'] = this.aDOrgID!.toJson();
    }
    data['IsActive'] = this.isActive;
    data['Created'] = this.created;
    if (this.createdBy != null) {
      data['CreatedBy'] = this.createdBy!.toJson();
    }
    data['Updated'] = this.updated;
    if (this.updatedBy != null) {
      data['UpdatedBy'] = this.updatedBy!.toJson();
    }
    if (this.mMovementID != null) {
      data['M_Movement_ID'] = this.mMovementID!.toJson();
    }
    if (this.mLocatorID != null) {
      data['M_Locator_ID'] = this.mLocatorID!.toJson();
    }
    if (this.mLocatorToID != null) {
      data['M_LocatorTo_ID'] = this.mLocatorToID!.toJson();
    }
    if (this.mProductID != null) {
      data['M_Product_ID'] = this.mProductID!.toJson();
    }
    data['MovementQty'] = this.movementQty;
    data['Line'] = this.line;
    if (this.mAttributeSetInstanceID != null) {
      data['M_AttributeSetInstance_ID'] =
          this.mAttributeSetInstanceID!.toJson();
    }
    data['ConfirmedQty'] = this.confirmedQty;
    data['TargetQty'] = this.targetQty;
    data['ScrappedQty'] = this.scrappedQty;
    data['Processed'] = this.processed;
    if (this.mAttributeSetInstanceToID != null) {
      data['M_AttributeSetInstanceTo_ID'] =
          this.mAttributeSetInstanceToID!.toJson();
    }
    data['PalletID'] = this.palletID;
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
