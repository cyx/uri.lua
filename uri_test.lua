local uri = require("uri")

-- case 1: building a URL from an object
local url = {
	host = "example.com",
	path = "/hello",
	port = 80,
	scheme = "http",
	user = "u@bit.ly",
	password = "p#p",
	fragment = 'h1'
}

assert("http://u%40bit.ly:p%23p@example.com/hello#h1" == uri.build(url))

-- case 2: parsing a url
local url = uri.parse("http://u%40bit.ly:p%23p@example.com/hello#h1")

assert(url.host == "example.com")
assert(url.path == "/hello")
assert(url.fragment == "h1")
assert(url.scheme == "http")
assert(url.user == "u@bit.ly")
assert(url.password == "p#p")
assert(url.userinfo == "u@bit.ly:p#p")
assert(url.query == nil)

-- case 3: no userinfo
local url = uri.parse("http://example.com/hello#h1")

assert(url.userinfo == nil)
assert(url.user == nil)
assert(url.password == nil)

-- case 4: with querysting
local url = uri.parse("http://example.com/hello/?foo=bar&bar=baz")

assert(url.query == "foo=bar&bar=baz")

print("All tests passed.")
