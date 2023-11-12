const express = require('express');
const app = express();

const responseText = process.env.ECHO_TEXT || 'Hello, World!';

app.get('/', (req, res) => {
    console.log(`Request received: ${req.method} ${req.url}`);
    res.send(responseText);
    console.log(`Response sent: ${res.statusCode} ${res.statusMessage}`);
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});

