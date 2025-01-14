local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "erlfmt",
    method = FORMATTING,
    filetypes = { "erlang" },
    generator_opts = {
        command = "erlfmt",
        args = { "-" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
