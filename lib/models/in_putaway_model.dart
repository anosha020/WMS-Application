class InPutAwayModel {
  int? pageCount;
  int? recordsSize;
  int? skipRecords;
  int? rowCount;
  int? arrayCount;
  List<Records>? records;

  InPutAwayModel(
      {this.pageCount,
      this.recordsSize,
      this.skipRecords,
      this.rowCount,
      this.arrayCount,
      this.records});

  InPutAwayModel.fromJson(Map<String, dynamic> json) {
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
  MovementType? movementType;
  String? movementDate;
  bool? processed;
  ADClientID? aDClientID;
  ADClientID? aDOrgID;
  bool? isActive;
  String? created;
  ADClientID? createdBy;
  String? updated;
  ADClientID? updatedBy;
  bool? isSOTrx;
  String? documentNo;
  ADClientID? cDocTypeID;
  bool? isPrinted;
  String? dateAcct;
  ADClientID? cBPartnerID;
  ADClientID? cBPartnerLocationID;
  ADClientID? mWarehouseID;
  MovementType? deliveryRule;
  MovementType? freightCostRule;
  int? freightAmt;
  MovementType? deliveryViaRule;
  int? chargeAmt;
  MovementType? priorityRule;
  ADClientID? cOrderID;
  String? dateOrdered;
  MovementType? docStatus;
  bool? sendEMail;
  int? noPackages;
  String? dateReceived;
  bool? isInTransit;
  bool? isApproved;
  bool? isInDispute;
  bool? isDropShip;
  bool? isAlternateReturnAddress;
  MovementType? isCrossDock;
  String? modelName;
  String? description;
  ADClientID? aDUserID;
  String? pOReference;
  int? volume;
  int? weight;
  int? processedOn;
  String? sealNo;
  ADClientID? mContainerTypeID;
  String? vehicleNo;
  String? receiverName;
  String? driverName;
  ADClientID? eRTransactionTypeID;
  String? dockNo;
  String? dockInTime;
  String? dockOutTime;
  String? gateInTime;
  String? gateOutTime;

  Records(
      {this.id,
      this.uid,
      this.movementType,
      this.movementDate,
      this.processed,
      this.aDClientID,
      this.aDOrgID,
      this.isActive,
      this.created,
      this.createdBy,
      this.updated,
      this.updatedBy,
      this.isSOTrx,
      this.documentNo,
      this.cDocTypeID,
      this.isPrinted,
      this.dateAcct,
      this.cBPartnerID,
      this.cBPartnerLocationID,
      this.mWarehouseID,
      this.deliveryRule,
      this.freightCostRule,
      this.freightAmt,
      this.deliveryViaRule,
      this.chargeAmt,
      this.priorityRule,
      this.cOrderID,
      this.dateOrdered,
      this.docStatus,
      this.sendEMail,
      this.noPackages,
      this.dateReceived,
      this.isInTransit,
      this.isApproved,
      this.isInDispute,
      this.isDropShip,
      this.isAlternateReturnAddress,
      this.isCrossDock,
      this.modelName,
      this.description,
      this.aDUserID,
      this.pOReference,
      this.volume,
      this.weight,
      this.processedOn,
      this.sealNo,
      this.mContainerTypeID,
      this.vehicleNo,
      this.receiverName,
      this.driverName,
      this.eRTransactionTypeID,
      this.dockNo,
      this.dockInTime,
      this.dockOutTime,
      this.gateInTime,
      this.gateOutTime});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    movementType = json['MovementType'] != null
        ? new MovementType.fromJson(json['MovementType'])
        : null;
    movementDate = json['MovementDate'];
    processed = json['Processed'];
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
    isSOTrx = json['IsSOTrx'];
    documentNo = json['DocumentNo'];
    cDocTypeID = json['C_DocType_ID'] != null
        ? new ADClientID.fromJson(json['C_DocType_ID'])
        : null;
    isPrinted = json['IsPrinted'];
    dateAcct = json['DateAcct'];
    cBPartnerID = json['C_BPartner_ID'] != null
        ? new ADClientID.fromJson(json['C_BPartner_ID'])
        : null;
    cBPartnerLocationID = json['C_BPartner_Location_ID'] != null
        ? new ADClientID.fromJson(json['C_BPartner_Location_ID'])
        : null;
    mWarehouseID = json['M_Warehouse_ID'] != null
        ? new ADClientID.fromJson(json['M_Warehouse_ID'])
        : null;
    deliveryRule = json['DeliveryRule'] != null
        ? new MovementType.fromJson(json['DeliveryRule'])
        : null;
    freightCostRule = json['FreightCostRule'] != null
        ? new MovementType.fromJson(json['FreightCostRule'])
        : null;
    freightAmt = json['FreightAmt'];
    deliveryViaRule = json['DeliveryViaRule'] != null
        ? new MovementType.fromJson(json['DeliveryViaRule'])
        : null;
    chargeAmt = json['ChargeAmt'];
    priorityRule = json['PriorityRule'] != null
        ? new MovementType.fromJson(json['PriorityRule'])
        : null;
    cOrderID = json['C_Order_ID'] != null
        ? new ADClientID.fromJson(json['C_Order_ID'])
        : null;
    dateOrdered = json['DateOrdered'];
    docStatus = json['DocStatus'] != null
        ? new MovementType.fromJson(json['DocStatus'])
        : null;
    sendEMail = json['SendEMail'];
    noPackages = json['NoPackages'];
    dateReceived = json['DateReceived'];
    isInTransit = json['IsInTransit'];
    isApproved = json['IsApproved'];
    isInDispute = json['IsInDispute'];
    isDropShip = json['IsDropShip'];
    isAlternateReturnAddress = json['IsAlternateReturnAddress'];
    isCrossDock = json['IsCrossDock'] != null
        ? new MovementType.fromJson(json['IsCrossDock'])
        : null;
    modelName = json['model-name'];
    description = json['Description'];
    aDUserID = json['AD_User_ID'] != null
        ? new ADClientID.fromJson(json['AD_User_ID'])
        : null;
    pOReference = json['POReference'];
    volume = json['Volume'];
    weight = json['Weight'];
    processedOn = json['ProcessedOn'];
    sealNo = json['SealNo'];
    mContainerTypeID = json['M_ContainerType_ID'] != null
        ? new ADClientID.fromJson(json['M_ContainerType_ID'])
        : null;
    vehicleNo = json['VehicleNo'];
    receiverName = json['ReceiverName'];
    driverName = json['DriverName'];
    eRTransactionTypeID = json['ER_TransactionType_ID'] != null
        ? new ADClientID.fromJson(json['ER_TransactionType_ID'])
        : null;
    dockNo = json['DockNo'];
    dockInTime = json['DockInTime'];
    dockOutTime = json['DockOutTime'];
    gateInTime = json['GateInTime'];
    gateOutTime = json['GateOutTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    if (this.movementType != null) {
      data['MovementType'] = this.movementType!.toJson();
    }
    data['MovementDate'] = this.movementDate;
    data['Processed'] = this.processed;
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
    data['IsSOTrx'] = this.isSOTrx;
    data['DocumentNo'] = this.documentNo;
    if (this.cDocTypeID != null) {
      data['C_DocType_ID'] = this.cDocTypeID!.toJson();
    }
    data['IsPrinted'] = this.isPrinted;
    data['DateAcct'] = this.dateAcct;
    if (this.cBPartnerID != null) {
      data['C_BPartner_ID'] = this.cBPartnerID!.toJson();
    }
    if (this.cBPartnerLocationID != null) {
      data['C_BPartner_Location_ID'] = this.cBPartnerLocationID!.toJson();
    }
    if (this.mWarehouseID != null) {
      data['M_Warehouse_ID'] = this.mWarehouseID!.toJson();
    }
    if (this.deliveryRule != null) {
      data['DeliveryRule'] = this.deliveryRule!.toJson();
    }
    if (this.freightCostRule != null) {
      data['FreightCostRule'] = this.freightCostRule!.toJson();
    }
    data['FreightAmt'] = this.freightAmt;
    if (this.deliveryViaRule != null) {
      data['DeliveryViaRule'] = this.deliveryViaRule!.toJson();
    }
    data['ChargeAmt'] = this.chargeAmt;
    if (this.priorityRule != null) {
      data['PriorityRule'] = this.priorityRule!.toJson();
    }
    if (this.cOrderID != null) {
      data['C_Order_ID'] = this.cOrderID!.toJson();
    }
    data['DateOrdered'] = this.dateOrdered;
    if (this.docStatus != null) {
      data['DocStatus'] = this.docStatus!.toJson();
    }
    data['SendEMail'] = this.sendEMail;
    data['NoPackages'] = this.noPackages;
    data['DateReceived'] = this.dateReceived;
    data['IsInTransit'] = this.isInTransit;
    data['IsApproved'] = this.isApproved;
    data['IsInDispute'] = this.isInDispute;
    data['IsDropShip'] = this.isDropShip;
    data['IsAlternateReturnAddress'] = this.isAlternateReturnAddress;
    if (this.isCrossDock != null) {
      data['IsCrossDock'] = this.isCrossDock!.toJson();
    }
    data['model-name'] = this.modelName;
    data['Description'] = this.description;
    if (this.aDUserID != null) {
      data['AD_User_ID'] = this.aDUserID!.toJson();
    }
    data['POReference'] = this.pOReference;
    data['Volume'] = this.volume;
    data['Weight'] = this.weight;
    data['ProcessedOn'] = this.processedOn;
    data['SealNo'] = this.sealNo;
    if (this.mContainerTypeID != null) {
      data['M_ContainerType_ID'] = this.mContainerTypeID!.toJson();
    }
    data['VehicleNo'] = this.vehicleNo;
    data['ReceiverName'] = this.receiverName;
    data['DriverName'] = this.driverName;
    if (this.eRTransactionTypeID != null) {
      data['ER_TransactionType_ID'] = this.eRTransactionTypeID!.toJson();
    }
    data['DockNo'] = this.dockNo;
    data['DockInTime'] = this.dockInTime;
    data['DockOutTime'] = this.dockOutTime;
    data['GateInTime'] = this.gateInTime;
    data['GateOutTime'] = this.gateOutTime;
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
