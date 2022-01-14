SELECT DISTINCT tbl1.name AS SchoolName, 
tbl1.school_entities_id AS SchoolID,
tbl1.address AS SchoolAddress, 
tbl3.value AS firstname, 
tbl5.value AS Lastname,
tbl7.value AS StudentAddress,
tbl9.value AS Gender,
tbl11.value AS StudentSection,
tbl14.value AS TeacherName
FROM school_entities tbl1
INNER JOIN entities_types tbl16 ON tbl16.entities_type_id = 'SysStudent-004'
INNER JOIN entities_main tbl2 ON tbl2.school_entities_id = tbl1.school_entities_id AND tbl16.entities_type_id = 'SysStudent-004'
INNER JOIN entities_details tbl3 ON tbl2.school_entities_id = tbl1.school_entities_id AND tbl3.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl4 ON tbl4.id = tbl3.attributes_types_id AND tbl4.code = 'fname'
INNER JOIN entities_details tbl5 ON tbl5.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl6 ON tbl6.id = tbl5.attributes_types_id AND tbl6.code = 'lname'
INNER JOIN entities_details tbl7 ON tbl7.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl8 ON tbl8.id = tbl7.attributes_types_id AND tbl8.code = 'address'
INNER JOIN entities_details tbl9 ON tbl9.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl10 ON tbl10.id = tbl9.attributes_types_id AND tbl10.code = 'gender'
INNER JOIN entities_details tbl11 ON tbl11.entities_main_id = tbl2.parent_entities_main_id
INNER JOIN attributes_types tbl12 ON tbl12.id = tbl11.attributes_types_id AND tbl12.code = 'section'
INNER JOIN entities_main tbl13 ON tbl1.school_entities_id = tbl2.school_entities_id
INNER JOIN entities_details tbl14 ON tbl14.entities_main_id = tbl13.parent_entities_main_id
INNER JOIN attributes_types tbl15 ON tbl15.id = tbl14.attributes_types_id AND tbl15.code = 'fname'

ORDER BY tbl2.created ASC