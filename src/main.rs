use std::env;
use std::time::Instant;

fn main() {
    let start = Instant::now();
    let config = minigrep::Config::build(env::args());

    let result = minigrep::run(&config);
    let duration = start.elapsed();
    println!("{}, {}, {}, {:?}", &config.query, &config.file, &result, &duration);
}