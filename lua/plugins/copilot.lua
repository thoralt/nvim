return {
  "zbirenbaum/copilot-cmp",
  dependencies = "copilot.lua",
  opts = {
    event = { "InsertEnter", "LspAttach" },
    fix_pairs = false,
  },
}
