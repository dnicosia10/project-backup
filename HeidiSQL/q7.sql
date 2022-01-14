SELECT tbl2.value, tbl3.code FROM entities_main tbl1
INNER JOIN entities_types tbl4 ON tbl1.type_id = 2 
INNER JOIN	entities_details tbl2 ON tbl1.parent_entities_main_id = tbl2.entities_main_id 
INNER JOIN  attributes_types tbl3 ON tbl2.attributes_types_id = tbl3.id AND tbl3.code = 'fname' 


SELECT DISTINCT aty1.value AS Name, aty2.value AS Age, aty3.value AS Address, aty4.value AS '#',aty5.value AS 'Gender',ety.type AS Role
FROM entities_main em
JOIN entities_details ed ON em.uuid = ed.entities_main_id AND em.uuid = ed.entities_main_id
JOIN entities_details aty1 ON aty1.value = 'name' AND em.uuid = aty1.entities_main_id
JOIN entities_details aty2 ON aty2.value = 'age'  AND em.uuid = aty2.entities_main_id
JOIN entities_details aty3 ON aty3.value = 'address' AND em.uuid = aty3.entities_main_id
JOIN entities_details aty4 ON aty4.value = 'number' AND em.uuid = aty4.entities_main_id
JOIN entities_details aty5 ON aty5.value = 'gender' AND em.uuid = aty5.entities_main_id
JOIN entities_types ety WHERE ety.uuid = em.entities_types_id

