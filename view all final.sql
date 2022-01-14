SELECT DISTINCT tbl1.name AS SchoolName, 
tbl1.school_entities_id AS SchoolID,
tbl1.address AS SchoolAddress, 
tbl3.value AS firstname, 
tbl5.value AS Lastname,
tbl20.value AS Gender,
tbl22.value AS Section,
tbl9.description AS Types
FROM school_entities tbl1
INNER JOIN entities_main tbl2 ON tbl1.school_entities_id = 'System-001' OR tbl1.school_entities_id = 'CLSU' AND tbl1.school_entities_id = tbl2.school_entities_id
INNER JOIN entities_details tbl3 ON tbl3.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl4 ON tbl4.id = tbl3.attributes_types_id AND tbl4.code = 'fname'
INNER JOIN entities_details tbl5 ON tbl5.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl6 ON tbl6.id = tbl5.attributes_types_id AND tbl6.code = 'lname'
INNER JOIN entities_details tbl7 ON tbl7.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl8 ON tbl8.id = tbl7.attributes_types_id AND tbl8.code = 'address'
INNER JOIN entities_details tbl20 ON tbl20.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl21 ON tbl21.id = tbl20.attributes_types_id AND tbl21.code = 'gender'
INNER JOIN entities_details tbl22 ON tbl22.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl23 ON tbl23.id = tbl22.attributes_types_id AND tbl23.code = 'section'
INNER JOIN entities_types tbl9 ON tbl9.entities_type_id = tbl2.type_id AND tbl1.school_entities_id = tbl2.school_entities_id
ORDER BY tbl2.created ASC