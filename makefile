install:
	cargo build --release
	sudo mv target/release/minigrep /bin/

test:
	minigrep cargo makefile