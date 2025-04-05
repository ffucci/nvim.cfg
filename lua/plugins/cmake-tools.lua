return {
  "Civitasv/cmake-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local cmake = require("cmake-tools")

    cmake.setup {}
   -- Use Neovim commands for keymaps
    vim.keymap.set("n", "<leader>cb", "<cmd>:CMakeBuild<CR>", { desc = "[CMake] Build" })
    vim.keymap.set("n", "<leader>cs", "<cmd>:CMakeSelectBuildPreset<CR>", { desc = "[CMake] Select Build Preset" })
    vim.keymap.set("n", "<leader>cr", "<cmd>:CMakeRun<CR>", { desc = "[CMake] Run" })
    vim.keymap.set("n", "<leader>cd", "<cmd>:CMakeDebug<CR>", { desc = "[CMake] Debug" })
 end
}
