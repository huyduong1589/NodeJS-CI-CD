var request = require("request");

var options = { method: 'POST',
  url: 'http://3.1.217.123:8080/user/signin',
  headers: 
   { 'cache-control': 'no-cache',
     'Content-Type': 'application/json' },
  body: { email: 'dmhuy@tma.com.vn', password: '123456' },
  json: true };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});