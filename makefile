install:
	@cargo build --release
	@sudo mv target/release/minigrep /bin/

test:
	@minigrep cargo makefile

trim:
	@rm -rf benchmark

benchmark:
	@python3 benchmark/main.py

push:
	@git add -A
	@git commit -m "auto commit"
	@git push -u origin master