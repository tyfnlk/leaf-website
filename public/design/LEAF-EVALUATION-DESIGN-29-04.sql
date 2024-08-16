CREATE TABLE "Auditors" (
  "AuditorsID" SERIAL PRIMARY KEY,
  "Username" varchar,
  "Password" varchar,
  "Role" varchar,
  "Name" varchar,
  "Phone" varchar,
  "Email" varchar
);

CREATE TABLE "Establishments" (
  "EstablishmentID" SERIAL PRIMARY KEY,
  "Username" varchar,
  "Password" varchar,
  "Name" varchar,
  "Phone" varchar,
  "Email" varchar,
  "Address" varchar,
  "Website" varchar,
  "PointOfContact" varchar,
  "PointOfContactEmail" varchar,
  "PointOfContactPhone" varchar
);

CREATE TABLE "Evaluations" (
  "EvaluationID" SERIAL PRIMARY KEY,
  "AuditorsID" uuid,
  "EstablishmentID" uuid,
  "StartDate" timestamp,
  "EndDate" timestamp,
  "PreviousLeafLevel" int,
  "EvaluationDate" date,
  "Score" decimal
);

CREATE TABLE "Sections" (
  "SectionID" SERIAL PRIMARY KEY,
  "EvaluationID" uuid,
  "SectionName" varchar
);

CREATE TABLE "Categories" (
  "sectionID" uuid,
  "catergoryID" uuid,
  "categoryName" text
);

CREATE TABLE "Foodpurchasing" (
  "foodID" uuid,
  "foodName" text,
  "purchaseDate" timestamp,
  "supplierId" uuid,
  "distance" int,
  "cost" int,
  "category" text,
  "detailed" category
);

CREATE TABLE "Questions" (
  "QuestionID" SERIAL PRIMARY KEY,
  "CategoryID" uuid,
  "Version" int,
  "UpdatedDate" timestamp,
  "QuestionType" int,
  "QuestionTitle" varchar,
  "hasSubQuestion" Boolean
);

CREATE TABLE "QuestionType" (
  "id" int,
  "name" text
);

CREATE TABLE "subQuestion" (
  "QuestionID" uuid,
  "subQuestionID" int,
  "questiontype" int,
  "questionTitle" text
);

CREATE TABLE "Responses" (
  "ResponseID" SERIAL PRIMARY KEY,
  "EvaluationID" uuid,
  "QuestionID" uuid,
  "ResponseType" int,
  "hasSubResponse" boolean,
  "ResponseData" text,
  "ObjectID" uuid
);

CREATE TABLE "ResponseType" (
  "id" int,
  "name" text
);

CREATE TABLE "SubResponse" (
  "ResponseId" int,
  "subResponseID" int,
  "ResponseType" int,
  "responseTitle" text
);

CREATE TABLE "Menu" (
  "menuId" SERIAL PRIMARY KEY,
  "establishmentID" uuid,
  "menuCreationDate" date,
  "menuNotes" text
);

CREATE TABLE "Entrees" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "entreeName" text,
  "detailedType" text,
  "isMeat" boolean,
  "isVegetarian" boolean,
  "isVegan" boolean,
  "portion" int,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "AppetizersSides" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "AppetizersSidesName" text,
  "detailedType" text,
  "isMeat" boolean,
  "isVegetarian" boolean,
  "isVegan" boolean,
  "portion" int,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "Desserts" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "dessertName" text,
  "detailedType" text,
  "isMeat" boolean,
  "isVegetarian" boolean,
  "isVegan" boolean,
  "portion" int,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "Wines" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "wineName" text,
  "detailedType" text,
  "isRegular" boolean,
  "isOragnic" boolean,
  "isRegional" boolean,
  "isBiodynamic" boolean,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "Beers" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "beerName" text,
  "detailedType" text,
  "isRegular" boolean,
  "isOragnic" boolean,
  "isRegional" boolean,
  "isBiodynamic" boolean,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "MixBeverages" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "mixBeverageName" text,
  "detailedType" text,
  "isVegan" boolean,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "OtherBeverages" (
  "itemId" SERIAL PRIMARY KEY,
  "menuId" uuid,
  "otherBeveragesName" text,
  "detailedType" text,
  "isVegan" boolean,
  "itemRecommendation" text,
  "itemNotes" text
);

CREATE TABLE "FoodSuppliers" (
  "supplierId" SERIAL PRIMARY KEY,
  "supplierType" text,
  "supplierName" text,
  "status" text,
  "establishmentID" uuid,
  "createdAt" date,
  "location" text,
  "distance" int,
  "leafApprovedSupplier" bool,
  "description" text
);

CREATE TABLE "MeatProducts" (
  "meatProductId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "meatProductName" text,
  "cost" int,
  "createdAt" date,
  "certfiedSustainable" bool,
  "certfiedOrganic" bool,
  "vegetarian" bool,
  "antibiotics" bool,
  "SPCAcertified" bool,
  "alternativeProteinSOurce" bool,
  "other" bool,
  "total" int
);

CREATE TABLE "Dairy" (
  "dairyId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "dairyName" text,
  "cost" int,
  "createdAt" date,
  "certfiedSustainable" bool,
  "certfiedOrganic" bool,
  "other" bool,
  "total" int
);

CREATE TABLE "Seafood" (
  "seafoodId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "seafoodName" text,
  "cost" int,
  "createdAt" date,
  "oceanWise" bool,
  "ASCcertified" bool,
  "other" bool,
  "total" int
);

CREATE TABLE "Beverages" (
  "beverageId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "beverageName" text,
  "cost" int,
  "createdAt" date,
  "certfiedSustainable" bool,
  "certfiedOrganic" bool,
  "other" bool,
  "total" int
);

CREATE TABLE "Tea" (
  "teaId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "teaName" text,
  "cost" int,
  "createdAt" date,
  "fairTrade" bool,
  "directTrade" bool,
  "RAcertified" bool,
  "other" bool,
  "totalSustainable" bool,
  "total" int
);

CREATE TABLE "Coffee" (
  "coffeeId" SERIAL PRIMARY KEY,
  "supplierId" uuid,
  "coffeeName" text,
  "cost" int,
  "createdAt" date,
  "fairTrade" bool,
  "directTrade" bool,
  "RAcertified" bool,
  "other" bool,
  "totalSustainable" bool,
  "total" int
);

CREATE TABLE "EnergySource" (
  "esId" SERIAL PRIMARY KEY,
  "energyType" uuid,
  "energySupplierId" uuid,
  "evaluationId" uuid,
  "date" date,
  "eeId" uuid,
  "ieId" uuid
);

CREATE TABLE "ExternalEnergySources" (
  "eeId" SERIAL PRIMARY KEY,
  "billId" uuid,
  "cost" float,
  "energyUsage" float,
  "energyUsageFromSource" float
);

CREATE TABLE "InternalEnergySources" (
  "ieId" SERIAL PRIMARY KEY,
  "modelName" text,
  "energyUsage" float
);

CREATE TABLE "EnergyTypes" (
  "energyTypeId" SERIAL PRIMARY KEY,
  "energyTypeName" text,
  "energyCategory" enum
);

CREATE TABLE "EnergySuppliers" (
  "energySupplierId" SERIAL PRIMARY KEY,
  "energySupplierName" text
);

CREATE TABLE "Appliances" (
  "applianceId" SERIAL PRIMARY KEY,
  "equipmentCategory" text,
  "applianceType" text,
  "numberUnits" int,
  "yearModel" int,
  "sustainabilityLabel" text,
  "productDescriptionPDF" url,
  "unitProvider" float,
  "energyUsagePerHour" float
);

CREATE TABLE "ApplianceEnergyTracker" (
  "aetId" SERIAL PRIMARY KEY,
  "applianceId" uuid,
  "evaluationId" uuid
);

CREATE TABLE "DailyEnergyUsage" (
  "deuId" SERIAL PRIMARY KEY,
  "aetId" uuid,
  "dayOfWeek" enum,
  "off" int,
  "lowIntensity" int,
  "moderateIntensity" int,
  "highIntensity" int,
  "fixedIntensity" int
);

CREATE TABLE "EnergyRatios" (
  "energyRatioId" SERIAL PRIMARY KEY,
  "energyType" text,
  "canadianRatio" float
);

ALTER TABLE "Evaluations" ADD FOREIGN KEY ("AuditorsID") REFERENCES "Auditors" ("AuditorsID");

ALTER TABLE "Evaluations" ADD FOREIGN KEY ("EstablishmentID") REFERENCES "Establishments" ("EstablishmentID");

ALTER TABLE "Sections" ADD FOREIGN KEY ("EvaluationID") REFERENCES "Evaluations" ("EvaluationID");

ALTER TABLE "Foodpurchasing" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Responses" ADD FOREIGN KEY ("EvaluationID") REFERENCES "Evaluations" ("EvaluationID");

ALTER TABLE "Responses" ADD FOREIGN KEY ("QuestionID") REFERENCES "Questions" ("QuestionID");

ALTER TABLE "Menu" ADD FOREIGN KEY ("establishmentID") REFERENCES "Establishments" ("EstablishmentID");

ALTER TABLE "Entrees" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "AppetizersSides" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "Desserts" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "Wines" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "Beers" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "MixBeverages" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "OtherBeverages" ADD FOREIGN KEY ("menuId") REFERENCES "Menu" ("menuId");

ALTER TABLE "FoodSuppliers" ADD FOREIGN KEY ("establishmentID") REFERENCES "Establishments" ("EstablishmentID");

ALTER TABLE "MeatProducts" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Dairy" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Seafood" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Beverages" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Tea" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "Coffee" ADD FOREIGN KEY ("supplierId") REFERENCES "FoodSuppliers" ("supplierId");

ALTER TABLE "EnergySource" ADD FOREIGN KEY ("energyType") REFERENCES "EnergyTypes" ("energyTypeId");

ALTER TABLE "EnergySource" ADD FOREIGN KEY ("energySupplierId") REFERENCES "EnergySuppliers" ("energySupplierId");

ALTER TABLE "EnergySource" ADD FOREIGN KEY ("evaluationId") REFERENCES "Evaluations" ("EvaluationID");

ALTER TABLE "EnergySource" ADD FOREIGN KEY ("eeId") REFERENCES "ExternalEnergySources" ("eeId");

ALTER TABLE "EnergySource" ADD FOREIGN KEY ("ieId") REFERENCES "InternalEnergySources" ("ieId");

ALTER TABLE "ApplianceEnergyTracker" ADD FOREIGN KEY ("applianceId") REFERENCES "Appliances" ("applianceId");

ALTER TABLE "ApplianceEnergyTracker" ADD FOREIGN KEY ("evaluationId") REFERENCES "Evaluations" ("EvaluationID");

ALTER TABLE "DailyEnergyUsage" ADD FOREIGN KEY ("aetId") REFERENCES "ApplianceEnergyTracker" ("aetId");

ALTER TABLE "QuestionType" ADD FOREIGN KEY ("id") REFERENCES "Questions" ("QuestionType");

ALTER TABLE "subQuestion" ADD FOREIGN KEY ("QuestionID") REFERENCES "Questions" ("QuestionID");

ALTER TABLE "QuestionType" ADD FOREIGN KEY ("id") REFERENCES "subQuestion" ("questiontype");

ALTER TABLE "ResponseType" ADD FOREIGN KEY ("id") REFERENCES "Responses" ("ResponseType");

ALTER TABLE "SubResponse" ADD FOREIGN KEY ("ResponseId") REFERENCES "Responses" ("ResponseID");

ALTER TABLE "ResponseType" ADD FOREIGN KEY ("id") REFERENCES "SubResponse" ("ResponseType");

ALTER TABLE "Categories" ADD FOREIGN KEY ("sectionID") REFERENCES "Sections" ("SectionID");

ALTER TABLE "Questions" ADD FOREIGN KEY ("CategoryID") REFERENCES "Categories" ("catergoryID");
