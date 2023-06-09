-- Copyright (C) Kong Inc.
local kong = kong
local kong_meta = require "kong.meta"

local BlackListUrl = {
    VERSION = kong_meta.version,
    PRIORITY = -1
}

function BlackListUrl:access(config)

    for k, pattern in pairs(config.patterns) do
        if string.find(ngx.var.upstream_uri, pattern) then
            kong.response.set_header("Content-Type", config.content_type)
            return kong.response.exit(config.status, config.message)
        end
    end

end

return BlackListUrl
