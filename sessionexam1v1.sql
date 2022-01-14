SELECT DISTINCT em.UUID, ed.attributes_types_id, ed.value FROM entities_main em
INNER JOIN entities_details ed ON ed.entities_main_id = 'b16ad80b-4e77-11ec-a811-d8cb8aef7c12' 
