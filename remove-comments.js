"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
var path = require("path");
var directoryPath = './'; 
fs.readdir(directoryPath, function (err, files) {
    if (err) {
        console.error('Erro ao ler diretório', err);
        return;
    }
    files.forEach(function (file) {
        if (file.endsWith('.ts')) {
            var filePath = path.join(directoryPath, file);
            var content = fs.readFileSync(filePath, 'utf8');
            content = content.replace(/\/\/.*$/gm, '');
            fs.writeFileSync(filePath, content, 'utf8');
        }
    });
    console.log('Comentários removidos.');
});
