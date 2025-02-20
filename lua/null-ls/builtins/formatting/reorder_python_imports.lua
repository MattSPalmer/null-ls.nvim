local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "reorder_python_imports",
    method = FORMATTING,
    filetypes = { "python" },
    generator_opts = {
        command = "reorder-python-imports",
        args = { "-", "--exit-zero-even-if-changed" },
        to_stdin = true,
    },
    factory = h.formatter_factory,
})
