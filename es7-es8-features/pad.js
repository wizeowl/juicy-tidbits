''.padStart(10, 'Ha'); // HaHaHaHaHa, if you really care about precision

'def'.padStart(6, 'abc'); // abcdef

'5678'.padStart(7, '1234'); // 1235678

'23'.padEnd(8, '0'); // 23000000