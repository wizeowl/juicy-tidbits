// the \1 here refers to the (\w+)
// matches any words repeated with a space in between
const regex = /(\w+)\s(?=\1)/g;

const regex2 = /<(\w+)>(.*)<\/\1>/g;

const str = `Havana ooh na na`;

str.replace(regex, 'ni '); // Havana ooh ni na

const str2 = `<b>Bold</b><i>Italics</i>`;

str.replace(regex, '$2\n'); // Bold\nItalics\n
