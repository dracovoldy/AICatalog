using { managed }from '@sap/cds/common';
namespace Pattern.db;

entity PatternDetails : managed {
  Pattern_Name  : String;
  key Pattern_ID : String;
  Description  : String;
  Keyword : String;
  Critical : Integer
}
entity GeneratePatterns {
  key Pattern_ID : String;
  Pattern_Name  : String;
  Description  : String;
}
entity Color{
  key Color_ID : String;
}
