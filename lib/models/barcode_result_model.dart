class BarcodeResultModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  BarcodeResultModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  BarcodeResultModel.fromJson(Map<String, dynamic> json) {
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
  MovementType? movementType;
  ADClientID? mLocatorID;
  ADClientID? mProductID;
  String? movementDate;
  int? movementQty;
  ADClientID? mInOutLineID;
  ADClientID? mAttributeSetInstanceID;
  String? modelName;
  ADClientID? mMovementLineID;

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
      this.movementType,
      this.mLocatorID,
      this.mProductID,
      this.movementDate,
      this.movementQty,
      this.mInOutLineID,
      this.mAttributeSetInstanceID,
      this.modelName,
      this.mMovementLineID});

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
    movementType = json['MovementType'] != null
        ? new MovementType.fromJson(json['MovementType'])
        : null;
    mLocatorID = json['M_Locator_ID'] != null
        ? new ADClientID.fromJson(json['M_Locator_ID'])
        : null;
    mProductID = json['M_Product_ID'] != null
        ? new ADClientID.fromJson(json['M_Product_ID'])
        : null;
    movementDate = json['MovementDate'];
    movementQty = json['MovementQty'];
    mInOutLineID = json['M_InOutLine_ID'] != null
        ? new ADClientID.fromJson(json['M_InOutLine_ID'])
        : null;
    mAttributeSetInstanceID = json['M_AttributeSetInstance_ID'] != null
        ? new ADClientID.fromJson(json['M_AttributeSetInstance_ID'])
        : null;
    modelName = json['model-name'];
    mMovementLineID = json['M_MovementLine_ID'] != null
        ? new ADClientID.fromJson(json['M_MovementLine_ID'])
        : null;
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
    if (this.movementType != null) {
      data['MovementType'] = this.movementType!.toJson();
    }
    if (this.mLocatorID != null) {
      data['M_Locator_ID'] = this.mLocatorID!.toJson();
    }
    if (this.mProductID != null) {
      data['M_Product_ID'] = this.mProductID!.toJson();
    }
    data['MovementDate'] = this.movementDate;
    data['MovementQty'] = this.movementQty;
    if (this.mInOutLineID != null) {
      data['M_InOutLine_ID'] = this.mInOutLineID!.toJson();
    }
    if (this.mAttributeSetInstanceID != null) {
      data['M_AttributeSetInstance_ID'] =
          this.mAttributeSetInstanceID!.toJson();
    }
    data['model-name'] = this.modelName;
    if (this.mMovementLineID != null) {
      data['M_MovementLine_ID'] = this.mMovementLineID!.toJson();
    }
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

class MovementType {
  String? propertyLabel;
  String? id;
  String? identifier;
  String? modelName;

  MovementType({this.propertyLabel, this.id, this.identifier, this.modelName});

  MovementType.fromJson(Map<String, dynamic> json) {
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


