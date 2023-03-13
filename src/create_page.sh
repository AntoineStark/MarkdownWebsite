
if echo $1 | grep -q '^markdown_src' ; then 
    DIR="$1"
else
    DIR="markdown_src/$1"
fi

echo "rsync -arp resources/page_template/ $DIR"
rsync -ap resources/page_template/ "$DIR"