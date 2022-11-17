CREATE TABLE `VideoAbleDeviceType` (
  `IdVideoAbleDeviceType` int,
  `name` varchar,
  PRIMARY KEY (`IdVideoAbleDeviceType`)
);

CREATE TABLE `Motherboard` (
  `SSID` varchar,
  `ModelName` varchar,
  `PowerVRM` real,
  `QuantityVRMPhases` smallint,
  `Socket` varchar,
  `IdVideoAbleDeviceType` varchar,
  PRIMARY KEY (`SSID`)
);

CREATE TABLE `PCIeSlot` (
  `Num` smallint,
  `MotherboardSSID` varchar,
  PRIMARY KEY (`Num`, `MotherboardSSID`),
  FOREIGN KEY (`MotherboardSSID`) REFERENCES `Motherboard`(`SSID`)
);

CREATE TABLE `VideoPort` (
  `PortID` varchar,
  `Connected` Type,
  `motherBoardSSID` varchar,
  `videocardID` <type>,
  PRIMARY KEY (`PortID`)
);

CREATE TABLE `Power supply` (
  `ModelName` varchar,
  `Power` real,
  `IsCoPGreater80` boolean,
  `idConnectedMotherboard` varchar,
  PRIMARY KEY (`ModelName`, `idConnectedMotherboard`)
);

CREATE TABLE `RAM` (
  `SSID` varchar,
  `connectedSSID` varchar,
  `` <type>,
  PRIMARY KEY (`SSID`)
);

CREATE TABLE `VGA` (
  `Connected` ?,
  `isExistPinForSleep` boolean
);

CREATE TABLE `VideoCard` (
  `DeviceID` varchar,
  `PCIeSlot` ?,
  `Name` varchar,
  `MemoryBusWidth` smallint,
  `IdVideoAbleDeviceType` varchar,
  PRIMARY KEY (`DeviceID`)
);

CREATE TABLE `RAMslot` (
  `SlotNumber` varchar,
  `MotherboardSSID` varchar,
  `` <type>,
  PRIMARY KEY (`SlotNumber`),
  FOREIGN KEY (`MotherboardSSID`) REFERENCES `Motherboard`(`SSID`)
);

CREATE TABLE `HDMI` (
  `Connected` ?,
  `MaxDataRate` bigint
);

CREATE TABLE `CPU` (
  `S/N` varchar,
  `connectedMotherboardSSID` varchar,
  `TDP` real,
  `Socket` varchar,
  `Arch` varchar,
  `ArchFamily` varchar,
  PRIMARY KEY (`S/N`)
);

CREATE TABLE `VideoPortConnectedID` (
  `KeyDeviceId` varchar,
  `motherboardID` varchar,
  `DeviceID` varchar,
  PRIMARY KEY (`KeyDeviceId`)
);


