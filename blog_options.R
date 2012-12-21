blog_options <- list(url="somesite.com",
								 title="My test Blog",
								 subtitle="whatever",
								 author="some person",
								 simple_search="http://google.com/search",
								 description=NULL,
								 date_format="%Y-%m-%d|%H:%M|%Z",
								 source_directory="source",
								 public_directory="public")


other_options <- list(root="/",
							 permalink="/blog:/year:/title",
							 paginate=10,
							 recent_posts=5,
							 titlecase=TRUE)

all_options <- c(blog_options, other_options)