return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
  },

  config = function()
    local dap = require("dap")

    local dapui = require("dapui")

    require("dapui").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dap.adapters.lldb = {
      type = "executable",
      command = "/usr/bin/lldb-vscode", -- adjust as needed, must be absolute path
      name = "lldb",
    }

    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
      },
      {
        name = "Attach to gdbserver :1234",
        type = "cppdbg",
        request = "launch",
        MIMode = "gdb",
        miDebuggerServerAddress = "localhost:1234",
        miDebuggerPath = "/usr/bin/gdb",
        cwd = "${workspaceFolder}",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
      },
    }

    -- Create a debugger keymap using dap mark d
    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
  end,
}
