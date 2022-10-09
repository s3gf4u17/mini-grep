install:
	cargo build --release
	sudo mv target/release/minigrep /bin/

test:
	@minigrep the examples/world.txt
	@minigrep boy examples/bible.txt