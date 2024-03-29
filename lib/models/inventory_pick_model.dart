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
    updatedBy = json['UpdatedBy'] != null
        ? new ADClientID.fromJson(json['UpdatedBy'])
        : null;
    updated = json['Updated'];
    documentNo = json['DocumentNo'];
    movementDate = json['MovementDate'];
    processed = json['Processed'];
    processing = json['Processing'];
    isInTransit = json['IsInTransit'];
    docStatus = json['DocStatus'] != null
        ? new DocStatus.fromJson(json['DocStatus'])
        : null;
    cDocTypeID = json['C_DocType_ID'] != null
        ? new ADClientID.fromJson(json['C_DocType_ID'])
        : null;
    approvalAmt = json['ApprovalAmt'];
    isApproved = json['IsApproved'];
    chargeAmt = json['ChargeAmt'];
    freightAmt = json['FreightAmt'];
    mWarehouseID = json['M_Warehouse_ID'] != null
        ? new ADClientID.fromJson(json['M_Warehouse_ID'])
        : null;
    mWarehouseToID = json['M_WarehouseTo_ID'] != null
        ? new ADClientID.fromJson(json['M_WarehouseTo_ID'])
        : null;
    modelName = json['model-name'];
    salesRepID = json['SalesRep_ID'] != null
        ? new ADClientID.fromJson(json['SalesRep_ID'])
        : null;
    cBPartnerID = json['C_BPartner_ID'] != null
        ? new ADClientID.fromJson(json['C_BPartner_ID'])
        : null;
    cBPartnerLocationID = json['C_BPartner_Location_ID'] != null
        ? new ADClientID.fromJson(json['C_BPartner_Location_ID'])
        : null;
    pOReference = json['POReference'];
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
    if (this.updatedBy != null) {
      data['UpdatedBy'] = this.updatedBy!.toJson();
    }
    data['Updated'] = this.updated;
    data['DocumentNo'] = this.documentNo;
    data['MovementDate'] = this.movementDate;
    data['Processed'] = this.processed;
    data['Processing'] = this.processing;
    data['IsInTransit'] = this.isInTransit;
    if (this.docStatus != null) {
      data['DocStatus'] = this.docStatus!.toJson();
    }
    if (this.cDocTypeID != null) {
      data['C_DocType_ID'] = this.cDocTypeID!.toJson();
    }
    data['ApprovalAmt'] = this.approvalAmt;
    data['IsApproved'] = this.isApproved;
    data['ChargeAmt'] = this.chargeAmt;
    data['FreightAmt'] = this.freightAmt;
    if (this.mWarehouseID != null) {
      data['M_Warehouse_ID'] = this.mWarehouseID!.toJson();
    }
    if (this.mWarehouseToID != null) {
      data['M_WarehouseTo_ID'] = this.mWarehouseToID!.toJson();
    }
    data['model-name'] = this.modelName;
    if (this.salesRepID != null) {
      data['SalesRep_ID'] = this.salesRepID!.toJson();
    }
    if (this.cBPartnerID != null) {
      data['C_BPartner_ID'] = this.cBPartnerID!.toJson();
    }
    if (this.cBPartnerLocationID != null) {
      data['C_BPartner_Location_ID'] = this.cBPartnerLocationID!.toJson();
    }
    data['POReference'] = this.pOReference;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['propertyLabel'] = this.propertyLabel;
    data['id'] = this.id;
    data['identifier'] = this.identifier;
    data['model-name'] = this.modelName;
    return data;
  }
}
