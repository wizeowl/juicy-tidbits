// treats the string as a multi line string
const regexM = /^abc/gm;
const regex = /^abc/gm;

const str = '1213\nabc';

regex.test(str); // false
regexM.test(str); // true