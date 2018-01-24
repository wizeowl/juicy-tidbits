// matches foo followed by bar or boo
const regex = /foo(?=bar|boo)/g;

// matches foo are NOT followed by bar or boo
const regex2 = /foo(?!bar|boo)/g;

const str = `foo
foobar
foobaz
fooboo`;

