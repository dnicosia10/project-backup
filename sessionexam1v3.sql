vw_records
	

 
SELECT DISTINCT em.UUID, et.type, ed.value FROM entities_main em
INNER JOIN entities_details ed ON ed.entities_main_id = em.uuid
INNER JOIN entities_types et ON ed.value = 'address' WHERE em.uuid = '0002b061-4e78-11ec-a811-d8cb8aef7c12' 
