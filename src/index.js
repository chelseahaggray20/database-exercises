"use strict";
const $ = require('jquery');
const {sayHelloAgain, sayGoodbye} = require('./say-hello.js');

(() => {
    const sayHello = () => "Hello!";

    $('body').css({
        'background-color' : 'burlywood',
        'color' : 'firebrick'
    }).html(`<h1>${sayHelloAgain()}</h1>`);


})();
