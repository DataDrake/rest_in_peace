# rest-less
A really simple interface to Net::HTTP using Rack triplets

## Features
* Simple API
* Full Access all HTTP Methods allowed by Net::HTTP
* Auto handling of redirects
* Auto handling of HTTP/HTTPS
* No exceptions for Status codes

## Examples
``` ruby
require 'rest-less'

response = RL.request( :get , 'http://example.com')

=> [404,{'date' => ["Mon, 21 Dec 2015 21:52:40 GMT"]},'404 Page Not Found']
```