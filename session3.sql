SELECT DISTINCT ct.name FROM category_types ct 
INNER JOIN blog_post_categories bpc ON ct.id = bpc.category_id