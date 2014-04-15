# uri.lua

Basic module to parse / build URLs.

## usage

```lua
    local uri = require('uri')

    uri.parse("http://example.com/some/path#frag")

    uri.build({
        scheme = "http",
        host = "example.com",
        path = "/some/path",
        fragment = "frag"
    })
```

## install

assuming you're using [pac][pac]:

    pac add uri https://raw.githubusercontent.com/cyx/uri.lua/0.0.1/uri.lua
    pac install

## credits

Much of the code was taken from the [neturl][neturl]
module of Bertrand Mansion.

[neturl]: https://github.com/golgote/neturl
[pac]: https://github.com/soveran/pac
