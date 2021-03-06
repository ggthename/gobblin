CREATE EXTERNAL TABLE IF NOT EXISTS `testdb.testtable_orc_nested` (
  `parentFieldRecord` struct<`nestedFieldRecord`:struct<`superNestedFieldString`:string,`superNestedFieldInt`:int>,`nestedFieldString`:string,`nestedFieldInt`:int>,
  `parentFieldInt` int)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'file:/tmp/testtable_orc_nested/null'
TBLPROPERTIES (
  'orc.compress'='SNAPPY',
  'orc.row.index.stride'='268435456')