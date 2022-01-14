SELECT category_types.id, category_types.name, blog_post_categories.blog_post_id
FROM blog_post_categories
INNER JOIN category_types
ON blog_post_categories.category_id=category_types.id
WHERE blog_post_categories.blog_post_id =21;

INSERT INTO `UnknownTable` (`id`, `name`, `blog_post_id`) VALUES (2, 'Crypto currency', 21);
attributes_types