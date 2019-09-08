developer-contributions.jpg:	developer-contributions.pdf
	convert -verbose -density 300 -trim $? -quality 100 -flatten -sharpen 0x1.0 $@

developer-contributions.pdf:	developer-contributions.svg
	rsvg-convert -f pdf -o $@ $?

init:
	apt-get install librsvg2-bin

clean:
	rm -f *.png *.pdf *.jpg
