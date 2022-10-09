install:
	@cargo build --release
	@sudo mv target/release/minigrep /bin/

test:
	@minigrep cargo makefile

trim:
	@rm -rf data benchmark.py

benchmark:
	@python3 benchmark.py

push:
	@git add -A
	@git commit -m "auto commit"
	@git push -u origin master