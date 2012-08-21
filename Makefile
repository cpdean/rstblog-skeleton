all: build upload

clean:
	rm -rf _build

install:
	./install.sh

build:
	. e/bin/activate; run-rstblog build

serve:
	. e/bin/activate; run-rstblog serve

upload:
	rsync -ruav _build/* /home/conrad/public/blog.conradpdean.com/public/
