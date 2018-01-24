const regex = /foo(bar|boo)/g;
const regex2 = /(foo)(bar|boo)/g;

const str = `foo
foobar
foobaz
fooboo`;

str.replace(regex,'**$1**');
/*  output:
    foo
    **bar**
    foobaz
    **boo**
*/

str.replace(regex2,'**$1**')
/*  output:
    foo
    **foo**
    foobaz
    **foo**
*/

str.replace(regex2,'**$2**')
/*output:
    foo
    **bar**
    foobaz
    **boo**
*/
