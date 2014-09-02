'use strict';

var promptly = require('promptly'),
    q        = require('q'),
    sys      = require('util');

function confirm(question) {
    var deferred = q.defer();

    promptly.confirm(question, { 'default': 'yes' }, function(err, confirmed) {
        deferred.resolve(confirmed);
    });

    return deferred.promise;
}

function ask(question) {
    var deferred = q.defer();

    promptly.prompt(question, function(err, answer) {
        deferred.resolve(answer);
    });

    return deferred.promise;
}

function say(what) {
    sys.puts(what);
}

module.exports = function() {

    confirm('Hello, think of an animal and I\'ll try to guess it. Ready?').then(function(confirmed) {
        if (confirmed) {
            confirm('Is it a kitten?').then(function(confirmed) {
                if (confirmed) {
                    say('I knew it! Play again?');
                }
                else {
                    ask('You win! Help me learn from my mistake before you go. What animal were you thinking of?').then(function(animal) {
                        say('What question would help me distinguish ' + animal + ' from a kitten?');
                    });
                }
            });
        }
    });
};