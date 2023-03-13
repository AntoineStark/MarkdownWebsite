

all:
	echo "hi"

init:
	rsync -ap src/resources_init/ resources
	mkdir markdown_src
	#cp -r src/markdown_src_init/* markdown_src
	cp src/create_page.sh create_page.sh
	./create_page.sh markdown_src

reset:
	rm -r resourses
	rm -r markdown_src
	rm create_page.sh


