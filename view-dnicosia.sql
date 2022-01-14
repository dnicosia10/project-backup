SELECT DISTINCT aty1.value AS Name, aty2.value AS Age, aty3.value AS Address, aty4.value AS '#',aty5.value AS 'Gender',ety.type AS Role,em.entities_types_id
FROM entities_main em
JOIN entities_details ed ON em.uuid = ed.entities_main_id
JOIN entities_details aty1 ON aty1.value = 'name' AND em.uuid = ed.entities_main_id
JOIN entities_details aty2 ON aty2.value = 'age'
JOIN entities_details aty3 ON aty3.value = 'address'
JOIN entities_details aty4 ON aty4.value = 'number'
JOIN entities_details aty5 ON aty5.value = 'gender' 
JOIN entities_types ety WHERE ety. = ed.entities_main_id