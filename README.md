# MarkdownWebsite
The easiest way to create static websites using markdown



## Step by step tutorial

### Setup the source folder

To init your website sources, clone or download this repository to your computer, then open a terminal at the repository address. 

```bash
    $ ls
    Makefile        README.md       src
```


You can init the markdown source files files using 

```bash
    $ make init
    
    $ ls
    Makefile    README.md    create_page.sh    markdown_src    resources    src    website
```

`make init` creates a folder called `markdown_src` which will contain your markdown pages that will be transferred to the website, as well as a folder named `resources` which contains the common css files, as well as html parts of the websites that are common in all the webpages (navbar at the left, header, website title, etc.).

`website`, when your project is compiled, will contain the whole website.

### Create markdown webpages

The directory structure from the `markdown_src` folder will be copied onto the `website` output folder.

There is a macro to create a new page for your website :
```bash
    $ ./create_page.sh markdown_src/folder/webpage
```

'`markdown_src/`' can be omitted.

This will create a basic template for a webpage : an `index.md` file, and `img/` folder.


### Write you markdown page

Special stuff? wiki links? img linking?



### Setup site-wide parameters

In the `resources` folder, you will find : 
* a settings.json folder containing multiple compilation settings, such as the path to the CSS files, the title html, the left html, the right html, the bottom html, and the overlay html.

* a `css/` folder containing a few quickstart CSS files

* a html/ folder containing a few quickstart html files




### Compiling the website

To compile the website, use

```bash
    $ make
```

Every html file will be compiled with the right links, CSS and website-wide parts. You can then move the `website` folder to the server of your choice, or browse it immediately with :
```bash
    $ open website/index.html
```
