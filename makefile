prepare:
	clear
	cargo build
	clear

data:
	tr -dc "A-Za-z 0-9" < /dev/urandom | fold -w100|head -n 1000000 > file.txt

1: prepare
	@./target/debug/minigrep panga file.txt
	@./target/debug/minigrep ohboy file.txt