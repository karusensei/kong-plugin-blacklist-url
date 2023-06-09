local typedefs = require "kong.db.schema.typedefs"

return {
    name = "blacklist-url",
    fields = {{
        consumer = typedefs.no_consumer
    }, {
        config = {
            type = "record",
            fields = {{
                patterns = {
                    type = "array",
                    required = true,
                    elements = {
                        type = "string"
                    }
                }
            }, {
                status = {
                    type = "number",
                    required = true,
                    default = 403
                }
            }, {
                message = {
                    type = "string",
                    required = true,
                    default = "Unauthorized"
                }
            }, {
                content_type = {
                    type = "string",
                    required = true,
                    default = "application/json"
                }
            }}
        }
    }}
}
