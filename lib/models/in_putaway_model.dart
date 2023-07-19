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
  String? description;
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
  String? pOReference;
  MovementType? deliveryRule;
  MovementType? freightCostRule;
  int? freightAmt;
  MovementType? deliveryViaRule;
  int? chargeAmt;
  MovementType? priorityRule;
  MovementType? docStatus;
  bool? sendEMail;
  int? noPackages;
  bool? isInTransit;
  bool? isApproved;
  bool? isInDispute;
  int? volume;
  int? weight;
  bool? isDropShip;
  double? processedOn;
  bool? isAlternateReturnAddress;
  String? sealNo;
  ADClientID? mContainerTypeID;
  String? vehicleNo;
  String? driverName;
  MovementType? isCrossDock;
  String? modelName;
  ADClientID? cOrderID;
  String? dateOrdered;
  String? dateReceived;
  String? receiverName;
  String? dockNo;
  ADClientID? aDUserID;
  ADClientID? eRTransactionTypeID;
  String? gateInTime;
  String? dockInTime;
  String? dockOutTime;
  String? gateOutTime;
  String? billtyNo;

  Records(
      {this.id,
      this.uid,
      this.description,
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
      this.pOReference,
      this.deliveryRule,
      this.freightCostRule,
      this.freightAmt,
      this.deliveryViaRule,
      this.chargeAmt,
      this.priorityRule,
      this.docStatus,
      this.sendEMail,
      this.noPackages,
      this.isInTransit,
      this.isApproved,
      this.isInDispute,
      this.volume,
      this.weight,
      this.isDropShip,
      this.processedOn,
      this.isAlternateReturnAddress,
      this.sealNo,
      this.mContainerTypeID,
      this.vehicleNo,
      this.driverName,
      this.isCrossDock,
      this.modelName,
      this.cOrderID,
      this.dateOrdered,
      this.dateReceived,
      this.receiverName,
      this.dockNo,
      this.aDUserID,
      this.eRTransactionTypeID,
      this.gateInTime,
      this.dockInTime,
      this.dockOutTime,
      this.gateOutTime,
      this.billtyNo});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    description = json['Description'];
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
    pOReference = json['POReference'];
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
    docStatus = json['DocStatus'] != null
        ? new MovementType.fromJson(json['DocStatus'])
        : null;
    sendEMail = json['SendEMail'];
    noPackages = json['NoPackages'];
    isInTransit = json['IsInTransit'];
    isApproved = json['IsApproved'];
    isInDispute = json['IsInDispute'];
    volume = json['Volume'];
    weight = json['Weight'];
    isDropShip = json['IsDropShip'];
    processedOn = json['ProcessedOn'];
    isAlternateReturnAddress = json['IsAlternateReturnAddress'];
    sealNo = json['SealNo'];
    mContainerTypeID = json['M_ContainerType_ID'] != null
        ? new ADClientID.fromJson(json['M_ContainerType_ID'])
        : null;
    vehicleNo = json['VehicleNo'];
    driverName = json['DriverName'];
    isCrossDock = json['IsCrossDock'] != null
        ? new MovementType.fromJson(json['IsCrossDock'])
        : null;
    modelName = json['model-name'];
    cOrderID = json['C_Order_ID'] != null
        ? new ADClientID.fromJson(json['C_Order_ID'])
        : null;
    dateOrdered = json['DateOrdered'];
    dateReceived = json['DateReceived'];
    receiverName = json['ReceiverName'];
    dockNo = json['DockNo'];
    aDUserID = json['AD_User_ID'] != null
        ? new ADClientID.fromJson(json['AD_User_ID'])
        : null;
    eRTransactionTypeID = json['ER_TransactionType_ID'] != null
        ? new ADClientID.fromJson(json['ER_TransactionType_ID'])
        : null;
    gateInTime = json['GateInTime'];
    dockInTime = json['DockInTime'];
    dockOutTime = json['DockOutTime'];
    gateOutTime = json['GateOutTime'];
    billtyNo = json['BilltyNo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['Description'] = this.description;
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
    data['POReference'] = this.pOReference;
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
    if (this.docStatus != null) {
      data['DocStatus'] = this.docStatus!.toJson();
    }
    data['SendEMail'] = this.sendEMail;
    data['NoPackages'] = this.noPackages;
    data['IsInTransit'] = this.isInTransit;
    data['IsApproved'] = this.isApproved;
    data['IsInDispute'] = this.isInDispute;
    data['Volume'] = this.volume;
    data['Weight'] = this.weight;
    data['IsDropShip'] = this.isDropShip;
    data['ProcessedOn'] = this.processedOn;
    data['IsAlternateReturnAddress'] = this.isAlternateReturnAddress;
    data['SealNo'] = this.sealNo;
    if (this.mContainerTypeID != null) {
      data['M_ContainerType_ID'] = this.mContainerTypeID!.toJson();
    }
    data['VehicleNo'] = this.vehicleNo;
    data['DriverName'] = this.driverName;
    if (this.isCrossDock != null) {
      data['IsCrossDock'] = this.isCrossDock!.toJson();
    }
    data['model-name'] = this.modelName;
    if (this.cOrderID != null) {
      data['C_Order_ID'] = this.cOrderID!.toJson();
    }
    data['DateOrdered'] = this.dateOrdered;
    data['DateReceived'] = this.dateReceived;
    data['ReceiverName'] = this.receiverName;
    data['DockNo'] = this.dockNo;
    if (this.aDUserID != null) {
      data['AD_User_ID'] = this.aDUserID!.toJson();
    }
    if (this.eRTransactionTypeID != null) {
      data['ER_TransactionType_ID'] = this.eRTransactionTypeID!.toJson();
    }
    data['GateInTime'] = this.gateInTime;
    data['DockInTime'] = this.dockInTime;
    data['DockOutTime'] = this.dockOutTime;
    data['GateOutTime'] = this.gateOutTime;
    data['BilltyNo'] = this.billtyNo;
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
