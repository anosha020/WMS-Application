class InventoryPickModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  InventoryPickModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  InventoryPickModel.fromJson(Map<String, dynamic> json) {
    pageCount = json['page-count'];
    recordsSize = json['records-size'];
    skipRecords = json['skip-records'];
    rowCount = json['row-count'];
    arrayCount = json['array-count'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page-count'] = pageCount;
    data['records-size'] = recordsSize;
    data['skip-records'] = skipRecords;
    data['row-count'] = rowCount;
    data['array-count'] = arrayCount;
    if (records != null) {
      data['records'] = records!.map((v) => v.toJson()).toList();
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
  ADClientID? updatedBy;
  String? updated;
  String? documentNo;
  String? movementDate;
  bool? processed;
  bool? processing;
  bool? isInTransit;
  DocStatus? docStatus;
  ADClientID? cDocTypeID;
  int? approvalAmt;
  bool? isApproved;
  int? chargeAmt;
  int? freightAmt;
  ADClientID? mWarehouseID;
  ADClientID? mWarehouseToID;
  String? modelName;
  ADClientID? salesRepID;
  ADClientID? cBPartnerID;
  ADClientID? cBPartnerLocationID;
  String? pOReference;

  Records(
      {this.id,
      this.uid,
      this.aDClientID,
      this.aDOrgID,
      this.isActive,
      this.created,
      this.createdBy,
      this.updatedBy,
      this.updated,
      this.documentNo,
      this.movementDate,
      this.processed,
      this.processing,
      this.isInTransit,
      this.docStatus,
      this.cDocTypeID,
      this.approvalAmt,
      this.isApproved,
      this.chargeAmt,
      this.freightAmt,
      this.mWarehouseID,
      this.mWarehouseToID,
      this.modelName,
      this.salesRepID,
      this.cBPartnerID,
      this.cBPartnerLocationID,
      this.pOReference});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    aDClientID = json['AD_Client_ID'] != null
        ? ADClientID.fromJson(json['AD_Client_ID'])
        : null;
    aDOrgID = json['AD_Org_ID'] != null
        ? ADClientID.fromJson(json['AD_Org_ID'])
        : null;
    isActive = json['IsActive'];
    created = json['Created'];
    createdBy = json['CreatedBy'] != null
        ? ADClientID.fromJson(json['CreatedBy'])
        : null;
    updatedBy = json['UpdatedBy'] != null
        ? ADClientID.fromJson(json['UpdatedBy'])
        : null;
    updated = json['Updated'];
    documentNo = json['DocumentNo'];
    movementDate = json['MovementDate'];
    processed = json['Processed'];
    processing = json['Processing'];
    isInTransit = json['IsInTransit'];
    docStatus = json['DocStatus'] != null
        ? DocStatus.fromJson(json['DocStatus'])
        : null;
    cDocTypeID = json['C_DocType_ID'] != null
        ? ADClientID.fromJson(json['C_DocType_ID'])
        : null;
    approvalAmt = json['ApprovalAmt'];
    isApproved = json['IsApproved'];
    chargeAmt = json['ChargeAmt'];
    freightAmt = json['FreightAmt'];
    mWarehouseID = json['M_Warehouse_ID'] != null
        ? ADClientID.fromJson(json['M_Warehouse_ID'])
        : null;
    mWarehouseToID = json['M_WarehouseTo_ID'] != null
        ? ADClientID.fromJson(json['M_WarehouseTo_ID'])
        : null;
    modelName = json['model-name'];
    salesRepID = json['SalesRep_ID'] != null
        ? ADClientID.fromJson(json['SalesRep_ID'])
        : null;
    cBPartnerID = json['C_BPartner_ID'] != null
        ? ADClientID.fromJson(json['C_BPartner_ID'])
        : null;
    cBPartnerLocationID = json['C_BPartner_Location_ID'] != null
        ? ADClientID.fromJson(json['C_BPartner_Location_ID'])
        : null;
    pOReference = json['POReference'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    if (aDClientID != null) {
      data['AD_Client_ID'] = aDClientID!.toJson();
    }
    if (aDOrgID != null) {
      data['AD_Org_ID'] = aDOrgID!.toJson();
    }
    data['IsActive'] = isActive;
    data['Created'] = created;
    if (createdBy != null) {
      data['CreatedBy'] = createdBy!.toJson();
    }
    if (updatedBy != null) {
      data['UpdatedBy'] = updatedBy!.toJson();
    }
    data['Updated'] = updated;
    data['DocumentNo'] = documentNo;
    data['MovementDate'] = movementDate;
    data['Processed'] = processed;
    data['Processing'] = processing;
    data['IsInTransit'] = isInTransit;
    if (docStatus != null) {
      data['DocStatus'] = docStatus!.toJson();
    }
    if (cDocTypeID != null) {
      data['C_DocType_ID'] = cDocTypeID!.toJson();
    }
    data['ApprovalAmt'] = approvalAmt;
    data['IsApproved'] = isApproved;
    data['ChargeAmt'] = chargeAmt;
    data['FreightAmt'] = freightAmt;
    if (mWarehouseID != null) {
      data['M_Warehouse_ID'] = mWarehouseID!.toJson();
    }
    if (mWarehouseToID != null) {
      data['M_WarehouseTo_ID'] = mWarehouseToID!.toJson();
    }
    data['model-name'] = modelName;
    if (salesRepID != null) {
      data['SalesRep_ID'] = salesRepID!.toJson();
    }
    if (cBPartnerID != null) {
      data['C_BPartner_ID'] = cBPartnerID!.toJson();
    }
    if (cBPartnerLocationID != null) {
      data['C_BPartner_Location_ID'] = cBPartnerLocationID!.toJson();
    }
    data['POReference'] = pOReference;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['propertyLabel'] = propertyLabel;
    data['id'] = id;
    data['identifier'] = identifier;
    data['model-name'] = modelName;
    return data;
  }
}

class DocStatus {
  String? propertyLabel;
  String? id;
  String? identifier;
  String? modelName;

  DocStatus({this.propertyLabel, this.id, this.identifier, this.modelName});

  DocStatus.fromJson(Map<String, dynamic> json) {
    propertyLabel = json['propertyLabel'];
    id = json['id'];
    identifier = json['identifier'];
    modelName = json['model-name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['propertyLabel'] = propertyLabel;
    data['id'] = id;
    data['identifier'] = identifier;
    data['model-name'] = modelName;
    return data;
  }
}
