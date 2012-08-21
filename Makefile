all: build upload

clean:
	rm -rf _build

install:
	test -d e || virtualenv e
	test -d rstblog || git submodule init && git submodule update

build:
	. e/bin/activate;
	run-rstblog build

serve:
	. e/bin/activate; run-rstblog serve

upload:
	rsync -ruav _build/* /home/conrad/public/blog.conradpdean.com/public/
