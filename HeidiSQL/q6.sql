SELECT DISTINCT aty1.value AS Name, aty2.value AS Age, aty3.value AS Address, aty4.value AS '#',aty5.value AS 'Gender',ety.type AS Role,em.entities_types_id
FROM entities_main em
JOIN entities_details ed ON em.uuid = ed.entities_main_id
JOIN entities_details aty1 ON aty1.value = 'name' AND em.uuid = ed.entities_main_id
JOIN entities_details aty2 ON aty2.value = 'age' AND em.uuid = ed.entities_main_id
JOIN entities_details aty3 ON aty3.value = 'address' AND em.uuid = ed.entities_main_id
JOIN entities_details aty4 ON aty4.value = 'number' AND em.uuid = ed.entities_main_id
JOIN entities_details aty5 ON aty5.value = 'gender'  AND em.uuid = ed.entities_main_id
JOIN entities_types ety
WHERE em.uuid = 'b16ad80b-4e77-11ec-a811-d8cb8aef7c12'