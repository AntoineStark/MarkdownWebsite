SRC_DIR := ./markdown_src
DEST_DIR := ./website

all:
	rsync -ap "$(SRC_DIR)/" "$(DEST_DIR)/"

	find "$(DEST_DIR)" -name '*.md' -print | xargs -n1 python3 resources/md_to_html.py

init:
	rsync -ap src/resources_init/ resources
	mkdir markdown_src
	#cp -r src/markdown_src_init/* markdown_src
	cp src/create_page.sh create_page.sh
	./create_page.sh markdown_src
	git clone https://github.com/Python-Markdown/markdown resources/python_markdown


reset:
	rm -rf resources
	rm -rf markdown_src
	rm -rf website
	rm -f create_page.sh


clean:
	rm -rf website