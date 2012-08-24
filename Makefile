all: build upload

clean:
	rm -rf _build

install:
	./_install.sh
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
	. _e/bin/activate; run-rstblog build

serve:
	. _e/bin/activate; run-rstblog serve

upload:
	rsync -ruav _build/* `cat blog-host`
