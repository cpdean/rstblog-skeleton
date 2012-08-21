all: build upload

clean:
	rm -rf _build

install:
	test ! -d rstblog || git submodule init && git submodule update
	if [ -d e ]; then
		test -d e || virtualenv e
		pushd rstblog/
		. ../e/bin/activate; python setup.py install
		popd
	fi


build:
	. e/bin/activate; run-rstblog build

serve:
	. e/bin/activate; run-rstblog serve

upload:
	rsync -ruav _build/* /home/conrad/public/blog.conradpdean.com/public/
