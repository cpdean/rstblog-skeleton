all: build upload

clean:
	rm -rf _build

install:
	./install.sh
	@echo ""
	@echo ""
	@echo ""
	@echo ""
	@echo ""
	@echo ""
	@echo ""
	@echo "Now change the contents of blog-host to an"
	@echo "appropriate rsync target, remote or local"

build:
	. e/bin/activate; run-rstblog build

serve:
	. e/bin/activate; run-rstblog serve

upload:
	rsync -ruav _build/* `cat blog-host`
