# kong-plugin-blacklist-url

A kong plugin that blacklist upstream url from an array of matching expressions

## A propos

Ce module à été développé au sein de l'équipe système de la Métropole de Nice Côte d'Azur.




## Installation

Copy the folder `blacklist-url` into your kong plugin folder, for an image of kong alpine 3.2.2 is located at ``/usr/local/share/lua/5.1/kong/plugins``

then, add the new plugin to the list of installed plugin :

```bash
# Via env var
export KONG_PLUGINS=$KONG_PLUGINS,blacklist-url
```

## Module configuration

The modules allow the user to configure the following options, that are sets into the ``schema.lua`` file :

 * `patterns` : An array of strings that represents valid lua matching patterns
 * `status` : A number that will be set as the HTTP status codes.
 * `message` : The content of the body that will be sended to the client.
 * `content_type` : The value of the `Content-Type` header that will be sended.



## Usages

The list of strings to be checked by the module must represent match patterns compatible with lua.

Special characters must be escaped with the % sign.

Examples :

```
"AAA-BBB" => "AAA%-BBB"
```