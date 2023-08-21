class InPutAwayDetailModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  InPutAwayDetailModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  InPutAwayDetailModel.fromJson(Map<String, dynamic> json) {
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
  ADClientID? mLocatorID;
  ADClientID? mInOutID;
  ADClientID? mProductID;
  int? movementQty;
  String? description;
  int? line;
  ADClientID? cOrderLineID;
  ADClientID? cUOMID;
  bool? isInvoiced;
  ADClientID? mAttributeSetInstanceID;
  bool? isDescription;
  int? confirmedQty;
  int? pickedQty;
  int? scrappedQty;
  int? targetQty;
  bool? processed;
  int? qtyEntered;
  bool? isAutoProduce;
  String? batchNo;
  String? expiryDate;
  ADClientID? mBatchManagementID;
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
      this.mLocatorID,
      this.mInOutID,
      this.mProductID,
      this.movementQty,
      this.description,
      this.line,
      this.cOrderLineID,
      this.cUOMID,
      this.isInvoiced,
      this.mAttributeSetInstanceID,
      this.isDescription,
      this.confirmedQty,
      this.pickedQty,
      this.scrappedQty,
      this.targetQty,
      this.processed,
      this.qtyEntered,
      this.isAutoProduce,
      this.batchNo,
      this.expiryDate,
      this.mBatchManagementID,
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
    mLocatorID = json['M_Locator_ID'] != null
        ? new ADClientID.fromJson(json['M_Locator_ID'])
        : null;
    mInOutID = json['M_InOut_ID'] != null
        ? new ADClientID.fromJson(json['M_InOut_ID'])
        : null;
    mProductID = json['M_Product_ID'] != null
        ? new ADClientID.fromJson(json['M_Product_ID'])
        : null;
    movementQty = json['MovementQty'];
    description = json['Description'];
    line = json['Line'];
    cOrderLineID = json['C_OrderLine_ID'] != null
        ? new ADClientID.fromJson(json['C_OrderLine_ID'])
        : null;
    cUOMID = json['C_UOM_ID'] != null
        ? new ADClientID.fromJson(json['C_UOM_ID'])
        : null;
    isInvoiced = json['IsInvoiced'];
    mAttributeSetInstanceID = json['M_AttributeSetInstance_ID'] != null
        ? new ADClientID.fromJson(json['M_AttributeSetInstance_ID'])
        : null;
    isDescription = json['IsDescription'];
    confirmedQty = json['ConfirmedQty'];
    pickedQty = json['PickedQty'];
    scrappedQty = json['ScrappedQty'];
    targetQty = json['TargetQty'];
    processed = json['Processed'];
    qtyEntered = json['QtyEntered'];
    isAutoProduce = json['IsAutoProduce'];
    batchNo = json['BatchNo'];
    expiryDate = json['ExpiryDate'];
    mBatchManagementID = json['M_BatchManagement_ID'] != null
        ? new ADClientID.fromJson(json['M_BatchManagement_ID'])
        : null;
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
    if (this.mLocatorID != null) {
      data['M_Locator_ID'] = this.mLocatorID!.toJson();
    }
    if (this.mInOutID != null) {
      data['M_InOut_ID'] = this.mInOutID!.toJson();
    }
    if (this.mProductID != null) {
      data['M_Product_ID'] = this.mProductID!.toJson();
    }
    data['MovementQty'] = this.movementQty;
    data['Description'] = this.description;
    data['Line'] = this.line;
    if (this.cOrderLineID != null) {
      data['C_OrderLine_ID'] = this.cOrderLineID!.toJson();
    }
    if (this.cUOMID != null) {
      data['C_UOM_ID'] = this.cUOMID!.toJson();
    }
    data['IsInvoiced'] = this.isInvoiced;
    if (this.mAttributeSetInstanceID != null) {
      data['M_AttributeSetInstance_ID'] =
          this.mAttributeSetInstanceID!.toJson();
    }
    data['IsDescription'] = this.isDescription;
    data['ConfirmedQty'] = this.confirmedQty;
    data['PickedQty'] = this.pickedQty;
    data['ScrappedQty'] = this.scrappedQty;
    data['TargetQty'] = this.targetQty;
    data['Processed'] = this.processed;
    data['QtyEntered'] = this.qtyEntered;
    data['IsAutoProduce'] = this.isAutoProduce;
    data['BatchNo'] = this.batchNo;
    data['ExpiryDate'] = this.expiryDate;
    if (this.mBatchManagementID != null) {
      data['M_BatchManagement_ID'] = this.mBatchManagementID!.toJson();
    }
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
