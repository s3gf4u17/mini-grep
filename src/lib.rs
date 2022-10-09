use std::fs;

pub struct Config {
    pub query: String,
    pub file: String,
}

impl Config {
    pub fn build(mut args: impl Iterator<Item = String>) -> Config {
        args.next();
        let query = args.next().unwrap();
        let file = args.next().unwrap();
        Config {query,file}
    }
}

pub fn run(config: &Config) -> usize {
    let contents = fs::read_to_string(&config.file).expect("error reading file");
    search(&config.query,&contents).len()
}

pub fn search<'a>(query: &str, contents: &'a str) -> Vec<&'a str> {
    contents.lines().filter(|line| line.contains(query)).collect()
}