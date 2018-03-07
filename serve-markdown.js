var express = require('express');
var marked = require('marked');
var path = require('path');
var fs = require('fs');

var app = express();

app.get('/', function (req, res) {
    var filePath = __dirname + '/example.md';
    var file = fs.reqdFile(filePath, 'utf8', function (err, data) {
        if (err) {
            console.log(err);
        }
        res.send(marked(data.toString()));
    });
});

app.listen('8000', function () {
    console.log("server started");
});