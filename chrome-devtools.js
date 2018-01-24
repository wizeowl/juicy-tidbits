// currently inspected element
$0

// previous ones(only 4 availabla at any time)
$1, $2, $3

// xpath queries with $x, eg
$x('body/header/nav')

// 1st match, like document.querySelector
$('selector')

// all matches, like document.querySelectorAll
$$('selector')

// inspects the element
inspect($('selector'))

// very ambiguous :p
monitorEvents($('selector'), 'click')
