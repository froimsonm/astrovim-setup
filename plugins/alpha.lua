return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[

    	 ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
    	 ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
    	 ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
    	 ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
    	 ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
    	 ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

                         [@froimsonm]
    ]]
    --     local logo = [[
    --   ___     ___    ___   __  __ /\_\    ___ ___
    --  / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\
    -- /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \
    -- \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
    --  \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/
    --
    --                   [ @froimsonm ]
    --     ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}