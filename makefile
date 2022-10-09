install:
	@cargo build --release
	@sudo mv target/release/minigrep /bin/

test:
	@minigrep cargo makefile

trim:
	@rm -rf bmrk

benchmark:
	@python3 bmrk/main.py

push:
	@git add -A
	@git commit -m "auto commit"
	@git push -u origin master