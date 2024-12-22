return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  -- logo
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
    ___       ___  ___  ________     
|\  \     |\  \|\  \|\_____  \    
\ \  \    \ \  \\\  \\|___/  /|   
 \ \  \    \ \  \\\  \   /  / /   
  \ \  \____\ \  \\\  \ /  /_/__  
   \ \_______\ \_______\\________\
    \|_______|\|_______|\|_______|
                                  
                                  
                                  

   ]],
        },
      },
    },
  },
  -- video logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ___       ___  ___  ________     
|\  \     |\  \|\  \|\_____  \    
\ \  \    \ \  \\\  \\|___/  /|   
 \ \  \    \ \  \\\  \   /  / /   
  \ \  \____\ \  \\\  \ /  /_/__  
   \ \_______\ \_______\\________\
    \|_______|\|_______|\|_______|
                                  
                                  

      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
