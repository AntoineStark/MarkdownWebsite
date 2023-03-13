import os
import sys

import python_markdown.markdown as markdown

def convert_md_to_html(md_file_path):
    # Open the input file
    with open(md_file_path, 'r') as md_file:
        # Read the contents of the file
        md_contents = md_file.read()

    # Convert the Markdown contents to HTML
    html_contents = markdown.markdown(md_contents)

    # Get the output file path by replacing the file extension with .html
    html_file_path = os.path.splitext(md_file_path)[0] + '.html'

    # Write the HTML contents to the output file
    with open(html_file_path, 'w') as html_file:
        html_file.write(html_contents)

if __name__ == '__main__':
    # Get the input file path from the command line argument
    md_file_path = sys.argv[1]

    # Call the convert_md_to_html function with the input file path
    convert_md_to_html(md_file_path)