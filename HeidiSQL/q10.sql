SELECT DISTINCT tbl1.name AS SchoolName, 
tbl1.school_entities_id AS SchoolID,
tbl1.address AS SchoolAddress, 
tbl3.value AS firstname, 
tbl5.value AS Lastname,
tbl7.value AS StudentAddress,
tbl9.value AS Email,
tbl11.value AS Salary
FROM school_entities tbl1
INNER JOIN entities_main tbl2 ON tbl1.school_entities_id = 'System-001' OR tbl1.school_entities_id = 'CLSU' AND tbl2.type_id = 'Sys-004'
INNER JOIN entities_details tbl3 ON tbl3.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl4 ON tbl4.id = tbl3.attributes_types_id AND tbl4.code = 'fname'
INNER JOIN entities_details tbl5 ON tbl5.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl6 ON tbl6.id = tbl5.attributes_types_id AND tbl6.code = 'lname'
INNER JOIN entities_details tbl7 ON tbl7.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl8 ON tbl8.id = tbl7.attributes_types_id AND tbl8.code = 'address'
INNER JOIN entities_details tbl9 ON tbl9.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl10 ON tbl10.id = tbl9.attributes_types_id AND tbl10.code = 'email'
INNER JOIN entities_details tbl11 ON tbl11.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl12 ON tbl12.id = tbl11.attributes_types_id AND tbl12.code = 'salary'
ORDER BY tbl2.created ASC