/* checksum : 0d817bb774fdbf5c9eb6301ba928aa29 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service Marketing_Campaigns {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '2'
entity Marketing_Campaigns.Campaigns {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key CampaignUUID : UUID not null;
  /** An ID of a campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Campaign ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignID : String(10) not null;
  /** Name of the campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Campaign'
  @sap.quickinfo : 'Campaign Name'
  CampaignName : String(40) not null;
  /** A description of a campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Description'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CampaignDescription : String(1000) null;
  /** Date and time when the campaign has been scheduled to be executed. */
  @odata.Type : 'Edm.DateTimeOffset'
  @sap.unicode : 'false'
  @sap.label : 'Start Date'
  @sap.quickinfo : 'Start Date of Execution Interval as Timestamp'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CampaignScheduleDateTime : DateTime null;
  @sap.unicode : 'false'
  @sap.label : 'Interval Value'
  @sap.quickinfo : 'Value for Execution Interval'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CampaignExecutionFrqcyInterval : String(3) null;
  /**
   * Indicates the unit for execution interval.
   * 
   * To hold the execution interval ID value.Execution interval can be 000, 001, and so on as defined in the marketing system.
   */
  @sap.unicode : 'false'
  @sap.label : 'Interval Unit'
  @sap.quickinfo : 'Unit for Execution Interval'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CampaignExecutionFrqcyUnit : String(1) null;
  /** The ID of the used media type. */
  @sap.unicode : 'false'
  @sap.label : 'Media Type'
  @sap.heading : 'Media Type Identifier'
  @sap.quickinfo : 'Media Type Identifier'
  MediaType : String(40) null;
  /**
   * Indicates the description of a media type.
   * 
   * Media type description can be Cinema, E-Mail, Socia, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Media Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MediaTypeName : String(120) not null;
  /** The lifecycle status of a campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Status'
  @sap.quickinfo : 'Life Cycle Status Code'
  @sap.creatable : 'false'
  CampaignLifecycleStatus : String(1) null;
  /**
   * This text appears when fixed values are displayed in the F4 help. It explains the possible input values.
   * 
   * SeeTask-Oriented InstructionsReference Documentation for Semantic Properties of Domains
   */
  @sap.unicode : 'false'
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignLifecycleStatusName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CommunicationCategoryUUID : UUID null;
  /** The name of a communication category. A communication category is a grouping to manage newsletter subscriptions for marketing campaigns. */
  @sap.unicode : 'false'
  @sap.label : 'Communication Category Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CommunicationCategoryName : String(40) not null;
  /** The ID of a marketing program. */
  @sap.unicode : 'false'
  @sap.label : 'Program GUID'
  @sap.quickinfo : 'Marketing Planning: Program Identifier (GUID)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingProgramUUID : UUID null;
  /** Indicates the name of a marketing program that can be defined by the user. */
  @sap.unicode : 'false'
  @sap.label : 'Program Name'
  @sap.heading : 'Marketing Program Name'
  @sap.quickinfo : 'Marketing Program Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  MarketingProgramName : String(60) not null;
  /** The priority of a campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Priority'
  CampaignPriority : String(1) null;
  /**
   * This text appears when fixed values are displayed in the F4 help. It explains the possible input values.
   * 
   * SeeTask-Oriented InstructionsReference Documentation for Semantic Properties of Domains
   */
  @sap.unicode : 'false'
  @sap.label : 'Short Descript.'
  @sap.quickinfo : 'Short Text for Fixed Values'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignPriorityName : String(60) not null;
  /**
   * The ID of the marketing area.
   * 
   * The marketing area represents an authorization concept in which data access can optionally be controlled based on the responsibilities of the user. Marketing areas can be used to restrict access to instances of an object, such as campaigns, email messages, email templates, or target groups.Examples of marketing areas are organizational units, product lines, brands, geographical regions, or any other organizational entity.
   */
  @sap.unicode : 'false'
  @sap.label : 'Marketing Area'
  @sap.updatable : 'false'
  MarketingArea : String(40) null;
  /** The name of the marketing area. For example, Global Marketing Area. */
  @sap.unicode : 'false'
  @sap.label : 'Marketing Area'
  @sap.heading : 'Marketing Area Description'
  @sap.quickinfo : 'Description for Marketing Area'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingAreaName : String(120) not null;
  @sap.unicode : 'false'
  @sap.label : 'Campaign Category'
  @sap.updatable : 'false'
  CampaignCategory : String(3) null;
  /** The name of a campaign category. A category defines the basic behaviour of the campaign you want to execute. Every category offers you a specific set of actions that you can use when you set up your campaign automation. */
  @sap.unicode : 'false'
  @sap.label : 'Category Name'
  @sap.quickinfo : 'Name of Campaign Category'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignCategoryName : String(40) not null;
  /** The earliest date a campaign can be executed. */
  @odata.Type : 'Edm.DateTime'
  @sap.unicode : 'false'
  @sap.label : 'Start Date'
  @sap.heading : 'Campaign Start Date'
  @sap.quickinfo : 'Campaign Start Date'
  CampaignStartDate : DateTime null;
  /** The date where a campaign stops, for example, to react on interactions. */
  @odata.Type : 'Edm.DateTime'
  @sap.unicode : 'false'
  @sap.label : 'End Date'
  @sap.heading : 'Campaign End Date'
  @sap.quickinfo : 'Campaign End Date'
  CampaignEndDate : DateTime null;
  /**
   * The UTC timestamp displays date and time according to UTC (Universal Coordinated Time).
   * 
   * In order to convert local time into a UTC time stamp, which makes it easier to compare times, the local time must be converted according to your time zone. The ABAP command convert is available for this purpose.Even if the time zone that the conversion is based on can be redetermined from Customizing or master data, we still recommend that you save the time zone.The internal structure of the high-resolution UTC time stamp is logically organized in date and time sections in a packed decimal format (YYYYMMDDhhmmssmmmuuun), which depicts the year, month, day, hour,second, millisecond, microsecond and the first decimal of the nanoseconds. Please note that the hardware that is normally used does not fully support a resolution of 100 nanoseconds, which is available in the structure.See also GET TIME STAMPA UTC time stamp in short form is also available.
   */
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreationDateTime : Timestamp not null;
  /**
   * The UTC timestamp displays date and time according to UTC (Universal Coordinated Time).
   * 
   * In order to convert local time into a UTC time stamp, which makes it easier to compare times, the local time must be converted according to your time zone. The ABAP command convert is available for this purpose.Even if the time zone that the conversion is based on can be redetermined from Customizing or master data, we still recommend that you save the time zone.The internal structure of the high-resolution UTC time stamp is logically organized in date and time sections in a packed decimal format (YYYYMMDDhhmmssmmmuuun), which depicts the year, month, day, hour,second, millisecond, microsecond and the first decimal of the nanoseconds. Please note that the hardware that is normally used does not fully support a resolution of 100 nanoseconds, which is available in the structure.See also GET TIME STAMPA UTC time stamp in short form is also available.
   */
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Time Stamp'
  @sap.quickinfo : 'UTC Time Stamp in Long Form (YYYYMMDDhhmmssmmmuuun)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  LastChangeDateTime : Timestamp not null;
  @sap.unicode : 'false'
  @sap.label : 'Campaign Owner'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignOwner : String(12) not null;
  /** This field contains the complete personal name. It is usually generated from the various name components (without title). */
  @sap.unicode : 'false'
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  CampaignOwnerName : String(80) not null;
  @sap.unicode : 'false'
  @sap.label : 'User Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CreatedByUser : String(12) not null;
  /** This field contains the complete personal name. It is usually generated from the various name components (without title). */
  @sap.unicode : 'false'
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CreatedByUserName : String(80) not null;
  @sap.unicode : 'false'
  @sap.label : 'User Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  LastChangeByUser : String(12) not null;
  /** This field contains the complete personal name. It is usually generated from the various name components (without title). */
  @sap.unicode : 'false'
  @sap.label : 'Full Name'
  @sap.quickinfo : 'Full Name of Person'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  LastChangeByUserName : String(80) not null;
  @sap.label : 'CampaignAssignedTargetGroups'
  @cds.ambiguous : 'missing on condition?'
  CampaignAssignedTargetGroups : Association to many Marketing_Campaigns.AssignedTargetGroups on CampaignAssignedTargetGroups.CampaignUUID = CampaignUUID;
  @sap.label : 'CampaignAssignedTeamMembers'
  @cds.ambiguous : 'missing on condition?'
  CampaignAssignedTeamMembers : Association to many Marketing_Campaigns.TeamMembers on CampaignAssignedTeamMembers.CampaignUUID = CampaignUUID;
  @cds.ambiguous : 'missing on condition?'
  CampaignActualSpend : Association to many Marketing_Campaigns.ActualSpends on CampaignActualSpend.CampaignUUID = CampaignUUID;
  @cds.ambiguous : 'missing on condition?'
  CampaignSpendHeader : Association to many Marketing_Campaigns.SpendHeaders on CampaignSpendHeader.CampaignUUID = CampaignUUID;
  @cds.ambiguous : 'missing on condition?'
  AssignedMarketingAgencies : Association to many Marketing_Campaigns.MarketingAgencies on AssignedMarketingAgencies.CampaignUUID = CampaignUUID;
  @cds.ambiguous : 'missing on condition?'
  ExternalCampaignReferences : Association to many Marketing_Campaigns.ExternalCampaignReferences on ExternalCampaignReferences.CampaignUUID = CampaignUUID;
  @sap.label : 'CampaignAssignedInterests'
  @cds.ambiguous : 'missing on condition?'
  CampaignAssignedInterests : Association to many Marketing_Campaigns.Interests {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.AssignedTargetGroups {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key TargetGroupUUID : UUID not null;
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key CampaignUUID : UUID not null;
  @sap.unicode : 'false'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  TargetGroup : String(10) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.SpendHeaderTimeSplits {
  /** Identifies a time split entity of the marketing spend header. */
  @sap.unicode : 'false'
  @sap.label : 'Time Split Key'
  @sap.heading : 'Key of Time Split of Marketing Spend Header'
  @sap.quickinfo : 'Key of Time Split of Marketing Spend Header'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key MarketingSpendHdrTimeSplitUUID : UUID not null;
  /** Identifies a specific marketing spend header. */
  @sap.unicode : 'false'
  @sap.label : 'Mktg Spend Hdr Key'
  @sap.heading : 'Key of Marketing Spend Header'
  @sap.quickinfo : 'Key of Marketing Spend Header'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendHeaderUUID : UUID not null;
  /**
   * Indicates a calendar year that starts on January 1 and ends on December 31.
   * 
   * A calendar year can be 2019, 2020, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Year'
  @sap.heading : 'Year'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarYear : String(4) not null;
  /**
   * Indicates a calendar quarter.
   * 
   * A calendar quarter can be 1, 2, 3, or 4.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Quarter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarQuarter : String(1) not null;
  /**
   * Indicates a calendar month.
   * 
   * A calendar month can be 01, 02, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendCalendarMonthName : String(60) not null;
  /** Indicates the amount of planned marketing spend at header level. */
  @sap.unicode : 'false'
  @sap.unit : 'PlannedMktgSpendHeaderCrcy'
  @sap.label : 'Plnd Mktg Spend Hdr'
  @sap.heading : 'Amount of Planned Marketing Spend Header'
  @sap.quickinfo : 'Amount of Planned Marketing Spend Header'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlannedMktgSpendHeaderAmt : Decimal(16, 3) not null;
  /** Indicates the currency of planned marketing spend at header level. */
  @sap.unicode : 'false'
  @sap.label : 'Plnd Spend Hdr Crcy'
  @sap.heading : 'Currency of Planned Marketing Spend Header'
  @sap.quickinfo : 'Currency of Planned Marketing Spend Header'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  PlannedMktgSpendHeaderCrcy : String(5) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.SpendItemTimeSplits {
  /** Identifies a specific time split of a marketing spend item of a campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Time Split Key'
  @sap.heading : 'Key of Time Split of Marketing Spend Item'
  @sap.quickinfo : 'Key of Time Split of Marketing Spend Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key MarketingSpendItmTimeSplitUUID : UUID not null;
  /** Identifies a specific marketing spend item. */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item UUID'
  @sap.heading : 'Marketing Spend Item UUID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItemUUID : UUID not null;
  /**
   * Indicates a calendar year that starts on January 1 and ends on December 31.
   * 
   * A calendar year can be 2019, 2020, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Year'
  @sap.heading : 'Year'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarYear : String(4) not null;
  /**
   * Indicates a calendar quarter.
   * 
   * A calendar quarter can be 1, 2, 3, or 4.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Quarter'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarQuarter : String(1) not null;
  /**
   * Indicates a calendar month.
   * 
   * A calendar month can be 01, 02, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendCalendarMonthName : String(60) not null;
  /**
   * Indicates an amount of planned marketing spend.
   * 
   * Planned spend can be maintained at marketing spend header and marketing spend item level.
   */
  @sap.unicode : 'false'
  @sap.unit : 'PlannedMktgSpendCrcy'
  @sap.label : 'Planned Mktg Spend'
  @sap.heading : 'Planned Marketing Spend'
  @sap.quickinfo : 'Planned Marketing Spend'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlannedMktgSpendAmt : Decimal(16, 3) not null;
  /**
   * Indicates the currency of planned marketing spend.
   * 
   * Currency can be EUR, USD, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Plnd Mktg Spend Crcy'
  @sap.heading : 'Currency of Planned Marketing Spend'
  @sap.quickinfo : 'Currency of Planned Marketing Spend'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  PlannedMktgSpendCrcy : String(5) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.ActualSpends {
  /** Identifies a specific campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Campaign UUID'
  @sap.heading : 'Campaign Universally Unique Identifier'
  @sap.quickinfo : 'Campaign UUID for API-service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key CampaignUUID : UUID not null;
  /** Identifies a specific program. */
  @sap.unicode : 'false'
  @sap.label : 'Program Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingProgramUUID : UUID not null;
  /** Identifies a specific marketing spend item. */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item UUID'
  @sap.heading : 'Marketing Spend Item UUID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItemUUID : UUID not null;
  /**
   * Indicates the ID of a spend item.
   * 
   * Spend Items are used in campaigns. Each spend item in a campaign gets its own ID.If a campaign has two spend items assigned, these spend items can have the following IDs: 0000000001and 0000000002.
   */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item'
  @sap.heading : 'Marketing Spend Item'
  @sap.quickinfo : 'Marketing Spend Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItem : String(10) not null;
  /** Indicates the name of a marketing spend item that can be defined and changed by the user. */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item Name'
  @sap.heading : 'Name of Marketing Spend Item'
  @sap.quickinfo : 'Name of Marketing Spend Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItemName : String(80) not null;
  /**
   * Indicates the ID of a spend type.
   * 
   * When you create a spend item in a campaign, first you have to specify a spend type.Spend types can be CREATIVE, DIGITAL, PRINT, TV, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Spend Type'
  @sap.heading : 'Marketing Spend Type'
  @sap.quickinfo : 'Marketing Spend Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendType : String(10) not null;
  /**
   * Indicates a calendar year that starts on January 1 and ends on December 31.
   * 
   * A calendar year can be 2019, 2020, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Year'
  @sap.heading : 'Year'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarYear : String(4) not null;
  /**
   * Indicates a calendar quarter.
   * 
   * A calendar quarter can be 1, 2, 3, or 4.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Quarter'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarQuarter : String(1) not null;
  /**
   * Indicates a calendar month.
   * 
   * A calendar month can be 01, 02, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendCalendarMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendCalendarMonthName : String(60) not null;
  /**
   * Indicates the actual marketing Spend Currency.
   * 
   * To hold the value of actual Spend Currency.Currency can be in EUR, USD, etc.
   */
  @sap.unicode : 'false'
  @sap.label : 'Actl Mktg Spend Crcy'
  @sap.heading : 'Actual Marketing Spend Currency'
  @sap.quickinfo : 'Actual Marketing Spend Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  ActualMktgSpendCrcy : String(5) not null;
  @sap.unicode : 'false'
  @sap.unit : 'ActualMktgSpendCrcy'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ActualMktgSpendAmt : Decimal(16, 3) not null;
  @sap.unicode : 'false'
  @sap.unit : 'ActualMktgSpendCrcy'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgCommitmentAmt : Decimal(16, 3) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.SpendItems {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key MarketingSpendItemUUID : UUID not null;
  /** Identifies a specific marketing spend header. */
  @sap.unicode : 'false'
  @sap.label : 'Mktg Spend Hdr Key'
  @sap.heading : 'Key of Marketing Spend Header'
  @sap.quickinfo : 'Key of Marketing Spend Header'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendHeaderUUID : UUID not null;
  /**
   * Indicates the ID of a spend item.
   * 
   * Spend Items are used in campaigns. Each spend item in a campaign gets its own ID.If a campaign has two spend items assigned, these spend items can have the following IDs: 0000000001and 0000000002.
   */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item'
  @sap.heading : 'Marketing Spend Item'
  @sap.quickinfo : 'Marketing Spend Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItem : String(10) not null;
  /** Indicates the name of a marketing spend item that can be defined and changed by the user. */
  @sap.unicode : 'false'
  @sap.label : 'Spend Item Name'
  @sap.heading : 'Name of Marketing Spend Item'
  @sap.quickinfo : 'Name of Marketing Spend Item'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendItemName : String(80) not null;
  /**
   * Indicates the ID of a spend type.
   * 
   * When you create a spend item in a campaign, first you have to specify a spend type.Spend types can be CREATIVE, DIGITAL, PRINT, TV, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Spend Type'
  @sap.heading : 'Marketing Spend Type'
  @sap.quickinfo : 'Marketing Spend Type'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendType : String(10) not null;
  /** Indicates the name of a marketing spend type. */
  @sap.unicode : 'false'
  @sap.label : 'Spend Type Name'
  @sap.heading : 'Name of Marketing Spend Type'
  @sap.quickinfo : 'Name of Marketing Spend Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendTypeName : String(60) not null;
  /** Indicates the year when the spend period starts. */
  @sap.unicode : 'false'
  @sap.label : 'Start Year'
  @sap.heading : 'Start Year of Spend Period'
  @sap.quickinfo : 'Start Year of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodStartYear : String(4) not null;
  /** Indicates the month when the spend period starts. */
  @sap.unicode : 'false'
  @sap.label : 'Start Month'
  @sap.heading : 'Start Month of Spend Period'
  @sap.quickinfo : 'Start Month of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodStartMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendPeriodStartMonthName : String(60) not null;
  /** Indicates the year when the spend period ends. */
  @sap.unicode : 'false'
  @sap.label : 'End Year'
  @sap.heading : 'End Year of Spend Period'
  @sap.quickinfo : 'End Year of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodEndYear : String(4) not null;
  /** Indicates the month when the spend period ends. */
  @sap.unicode : 'false'
  @sap.label : 'End Month'
  @sap.heading : 'End Month of Spend Period'
  @sap.quickinfo : 'End Month of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodEndMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendPeriodEndMonthName : String(60) not null;
  @cds.ambiguous : 'missing on condition?'
  ItemTimeSplit : Association to many Marketing_Campaigns.SpendItemTimeSplits on ItemTimeSplit.MarketingSpendItemUUID = MarketingSpendItemUUID;
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.SpendHeaders {
  /** Identifies a specific marketing spend header. */
  @sap.unicode : 'false'
  @sap.label : 'Mktg Spend Hdr Key'
  @sap.heading : 'Key of Marketing Spend Header'
  @sap.quickinfo : 'Key of Marketing Spend Header'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key MarketingSpendHeaderUUID : UUID not null;
  /** Indicates the marketing spend status. */
  @sap.unicode : 'false'
  @sap.label : 'Mktg Spend Status'
  @sap.heading : 'Marketing Spend Status'
  @sap.quickinfo : 'Marketing Spend Status'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendStatus : String(2) not null;
  /** Identifies a specific campaign. */
  @sap.unicode : 'false'
  @sap.label : 'Campaign UUID'
  @sap.heading : 'Campaign Universally Unique Identifier'
  @sap.quickinfo : 'Campaign UUID for API-service'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  CampaignUUID : UUID not null;
  /**
   * Indicates if detailed marketing spend planning is performed.
   * 
   * The value is automatically set by the system. If spend items exist, the value is true, if not, the value is false.
   */
  @sap.unicode : 'false'
  @sap.label : 'Plnd Mktg Spend Det'
  @sap.heading : 'Planned Marketing Spend Is Detailed'
  @sap.quickinfo : 'Planned Marketing Spend Is Detailed'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlannedMktgSpendIsDetailed : Boolean not null;
  /** Indicates the year when the spend period starts. */
  @sap.unicode : 'false'
  @sap.label : 'Start Year'
  @sap.heading : 'Start Year of Spend Period'
  @sap.quickinfo : 'Start Year of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodStartYear : String(4) not null;
  /** Indicates the month when the spend period starts. */
  @sap.unicode : 'false'
  @sap.label : 'Start Month'
  @sap.heading : 'Start Month of Spend Period'
  @sap.quickinfo : 'Start Month of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodStartMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendPeriodStartMonthName : String(60) not null;
  /** Indicates the year when the spend period ends. */
  @sap.unicode : 'false'
  @sap.label : 'End Year'
  @sap.heading : 'End Year of Spend Period'
  @sap.quickinfo : 'End Year of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodEndYear : String(4) not null;
  /** Indicates the month when the spend period ends. */
  @sap.unicode : 'false'
  @sap.label : 'End Month'
  @sap.heading : 'End Month of Spend Period'
  @sap.quickinfo : 'End Month of Spend Period'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MarketingSpendPeriodEndMonth : String(2) not null;
  /**
   * Indicates the name of a calendar month.
   * 
   * A calendar month name can be January, February, and so on.
   */
  @sap.unicode : 'false'
  @sap.label : 'Calendar Month Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  MktgSpendPeriodEndMonthName : String(60) not null;
  /** Indicates the amount of planned marketing spend at header level. */
  @sap.unicode : 'false'
  @sap.unit : 'PlannedMktgSpendHeaderCrcy'
  @sap.label : 'Plnd Mktg Spend Hdr'
  @sap.heading : 'Amount of Planned Marketing Spend Header'
  @sap.quickinfo : 'Amount of Planned Marketing Spend Header'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  PlannedMktgSpendHeaderAmt : Decimal(16, 3) not null;
  /** Indicates the currency of planned marketing spend at header level. */
  @sap.unicode : 'false'
  @sap.label : 'Plnd Spend Hdr Crcy'
  @sap.heading : 'Currency of Planned Marketing Spend Header'
  @sap.quickinfo : 'Currency of Planned Marketing Spend Header'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'currency-code'
  PlannedMktgSpendHeaderCrcy : String(5) not null;
  @cds.ambiguous : 'missing on condition?'
  HeaderTimeSplit : Association to many Marketing_Campaigns.SpendHeaderTimeSplits on HeaderTimeSplit.MarketingSpendHeaderUUID = MarketingSpendHeaderUUID;
  @cds.ambiguous : 'missing on condition?'
  Item : Association to many Marketing_Campaigns.SpendItems on Item.MarketingSpendHeaderUUID = MarketingSpendHeaderUUID;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.MarketingAgencies {
  /**
   * The API UUID indentifies a specific entity type instance.
   * 
   * The UUID is used to identify an entity type instance in the system. This must be provided when updating or deleting entity type instances.
   */
  @sap.unicode : 'false'
  @sap.label : 'UUID'
  @sap.heading : 'Universally Unique Identifier'
  @sap.quickinfo : 'UUID for API-Service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key CampaignUUID : UUID not null;
  /**
   * The API UUID indentifies a specific entity type instance.
   * 
   * The UUID is used to identify an entity type instance in the system. This must be provided when updating or deleting entity type instances.
   */
  @sap.unicode : 'false'
  @sap.label : 'UUID'
  @sap.heading : 'Universally Unique Identifier'
  @sap.quickinfo : 'UUID for API-Service'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key MarketingAgencyUUID : UUID not null;
  /** Indicates the marketing agency identifier. */
  @sap.unicode : 'false'
  @sap.label : 'Agency ID'
  @sap.heading : 'Marketing Agency Identifier'
  @sap.quickinfo : 'Marketing Agency Identifier'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MarketingAgency : String(32) not null;
  /** Indicates the marketing agency name. */
  @sap.unicode : 'false'
  @sap.label : 'Agency Name'
  @sap.heading : 'Marketing Agency Name'
  @sap.quickinfo : 'Marketing Agency Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  MarketingAgencyName : String(120) not null;
  /**
   * Internet mail address, also called e-mail address.
   * 
   * Example: user.name@company.comThe Internet mail address is used to send mail via the Internet world-wide; the protocol used is SMTP (Simple Mail Transfer Protocol).The Internet mail address format is specified in various RFCs (Internet Request for Comment), including RFCs 821 and 822.This is not an IP address (192.56.30.6).
   */
  @sap.unicode : 'false'
  @sap.label : 'Email Address'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  EmailAddress : String(241) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '2'
entity Marketing_Campaigns.TeamMembers {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key CampaignUUID : UUID not null;
  @sap.unicode : 'false'
  @sap.label : 'User'
  @sap.heading : 'User Name'
  @sap.quickinfo : 'User Name in User Master Record'
  @sap.updatable : 'false'
  key TeamMemberName : String(12) not null;
  @sap.unicode : 'false'
  @sap.label : 'TRUE'
  @sap.quickinfo : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
  IsOwner : Boolean null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.ExternalCampaignReferences {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key ExternalCampaignUUID : UUID not null;
  /** The ID of a campaign executed on an external platform assigned to the SAP Marketing Cloud campaign, not supported for campaign targets. */
  @sap.unicode : 'false'
  @sap.label : 'Ext. Campaign ID'
  @sap.heading : 'External Campaign ID'
  @sap.quickinfo : 'External Campaign ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  ExternalCampaignID : String(32) not null;
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  CampaignUUID : UUID not null;
  /** Name of the external campaign, not supported for campaign targets. */
  @sap.unicode : 'false'
  @sap.label : 'Ext. Campaign Name'
  @sap.heading : 'External Campaign Name'
  @sap.quickinfo : 'External Campaign Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  ExternalCampaignName : String(255) not null;
  /**
   * Indicates the URL of the external campaign.
   * 
   * To hold the URL of an external campaign.It can be any valid URL.
   */
  @sap.unicode : 'false'
  @sap.label : 'Ext. Campaign URL'
  @sap.heading : 'URL of External Campaign'
  @sap.quickinfo : 'URL of External Campaign'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExternalCampaignURL : String(1000) not null;
  /** Advertiser ID of the external campaign. The advertiser ID is part of the semantical key of the external campaign, not supported for campaign targets. */
  @sap.unicode : 'false'
  @sap.label : 'Advertiser ID'
  @sap.heading : 'External Campaign Advertiser ID'
  @sap.quickinfo : 'The Identifier of an Advertiser'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  Advertiser : String(32) not null;
  /** Advertiser name of the external campaign, not supported for campaign targets. */
  @sap.unicode : 'false'
  @sap.label : 'Advertiser Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  AdvertiserName : String(255) not null;
  /** ID of the party managing the external campaign. The party ID is part of the semantical key of the external campaign, not supported for campaign targets. */
  @sap.unicode : 'false'
  @sap.label : 'Managing Party'
  @sap.heading : 'External Campaign Managing Party'
  @sap.quickinfo : 'External Campaign Managing Party'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  ExternalCmpgnManagingParty : String(32) not null;
  /** Indicates the external campaign managing party name. */
  @sap.unicode : 'false'
  @sap.label : 'Managing Party Name'
  @sap.heading : 'External Campaign Managing Party Name'
  @sap.quickinfo : 'External Campaign Managing Party Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  ExternalCmpgnManagingPartyName : String(255) not null;
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '2'
entity Marketing_Campaigns.Interests {
  @sap.unicode : 'false'
  @sap.label : 'NodeID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key CampaignUUID : UUID not null;
  /**
   * This field displays the topic or object which has been assigned to a contact as an interest item.
   * 
   * You must define the possible interest items in the manage interests app or upload them as a csv file. Only pre-defined interests can be entered in this field.
   */
  @sap.unicode : 'false'
  @sap.label : 'Item of Interest'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key InterestItem : String(40) not null;
};

@cds.external : true
action Marketing_Campaigns.CreateCampaignFromTemplate(
  TemplateID : String(10) null,
  CampaignName : String(40) null
) returns Marketing_Campaigns.Campaigns null;

