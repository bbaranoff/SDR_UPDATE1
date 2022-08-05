let plivo = require('plivo');
let client = new plivo.Client();

client.messages.create({
    src: '<caller_id>',
    dst: '<destination_number>',
    text: 'Hello, world!'
}).then(function(message_created) {
    console.log(message_created)
});
