-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT c0, c1, c2
FROM parquet_t3
LATERAL VIEW JSON_TUPLE(json, 'f1', 'f2', 'f3') jt
--------------------------------------------------------------------------------
SELECT `gen_attr` AS `c0`, `gen_attr` AS `c1`, `gen_attr` AS `c2` FROM (SELECT `gen_attr`, `gen_attr`, `gen_attr` FROM (SELECT `arr` AS `gen_attr`, `arr2` AS `gen_attr`, `json` AS `gen_attr`, `id` AS `gen_attr` FROM `default`.`parquet_t3`) AS gen_subquery_0 LATERAL VIEW json_tuple(`gen_attr`, "f1", "f2", "f3") gen_subquery_1 AS `gen_attr`, `gen_attr`, `gen_attr`) AS jt
