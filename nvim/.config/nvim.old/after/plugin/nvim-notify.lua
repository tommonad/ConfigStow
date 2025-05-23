local notify = require('notify')

notify.setup({
    timeout = 6000,
    background_colour = "#00000000",
    level = 2,
    minimum_width = 50,
    render = "wrapped-compact",
    stages = "slide",
    top_down = true,
    fps = 30,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "✎",
      WARN = ""

  },

    time_formats = {
      notification = "%T",
      notification_history = "%FT%T"
    },
})

-- Set `nvim-notify` as the default notification provider
vim.notify = notify
