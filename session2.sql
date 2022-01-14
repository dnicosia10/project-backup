SELECT DISTINCT * FROM blog_post bp
LEFT JOIN blog_post_categories bpc ON bpc.blog_post_id = bp.id
INNER JOIN blog_post_comment bc ON bc.blog_post_id = bpc.blog_post_id
inner JOIN category_types ct ON bpc.category_id = ct.id

ORDER BY bp.id ASC 
