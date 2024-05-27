return {
  { "davidgranstrom/nvim-markdown-preview" },
  -- {
  --   "jackMort/ChatGPT.nvim",
  --   event = "VeryLazy",
  --   config = function()
  --     require("chatgpt").setup({
  --       api_key_cmd = "pass asahi-linux-gpt",
  --       yank_register = "+",
  --       edit_with_instructions = {
  --         diff = false,
  --         keymaps = {
  --           close = "<C-c>",
  --           accept = "<C-y>",
  --           toggle_diff = "<C-d>",
  --           toggle_settings = "<C-o>",
  --           toggle_help = "<C-h>",
  --           cycle_windows = "<Tab>",
  --           use_output_as_input = "<C-i>",
  --         },
  --       },
  --       chat = {
  --         welcome_message = WELCOME_MESSAGE,
  --         loading_text = "Loading, please wait ...",
  --         question_sign = "", -- 🙂
  --         answer_sign = "ﮧ", -- 🤖
  --         border_left_sign = "",
  --         border_right_sign = "",
  --         max_line_length = 120,
  --         sessions_window = {
  --           active_sign = "  ",
  --           inactive_sign = "  ",
  --           current_line_sign = "",
  --           border = {
  --             style = "rounded",
  --             text = {
  --               top = " Sessions ",
  --             },
  --           },
  --           win_options = {
  --             winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --           },
  --         },
  --         keymaps = {
  --           close = "<C-c>",
  --           yank_last = "<C-y>",
  --           yank_last_code = "<C-k>",
  --           scroll_up = "<C-u>",
  --           scroll_down = "<C-d>",
  --           new_session = "<C-n>",
  --           cycle_windows = "<Tab>",
  --           cycle_modes = "<C-f>",
  --           next_message = "<C-j>",
  --           prev_message = "<C-k>",
  --           select_session = "<Space>",
  --           rename_session = "r",
  --           delete_session = "d",
  --           draft_message = "<C-r>",
  --           edit_message = "e",
  --           delete_message = "d",
  --           toggle_settings = "<C-o>",
  --           toggle_sessions = "<C-p>",
  --           toggle_help = "<C-h>",
  --           toggle_message_role = "<C-r>",
  --           toggle_system_role_open = "<C-s>",
  --           stop_generating = "<C-x>",
  --         },
  --       },
  --       popup_layout = {
  --         default = "center",
  --         center = {
  --           width = "80%",
  --           height = "80%",
  --         },
  --         right = {
  --           width = "30%",
  --           width_settings_open = "50%",
  --         },
  --       },
  --       popup_window = {
  --         border = {
  --           highlight = "FloatBorder",
  --           style = "rounded",
  --           text = {
  --             top = " ChatGPT ",
  --           },
  --         },
  --         win_options = {
  --           wrap = true,
  --           linebreak = true,
  --           foldcolumn = "1",
  --           winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --         },
  --         buf_options = {
  --           filetype = "markdown",
  --         },
  --       },
  --       system_window = {
  --         border = {
  --           highlight = "FloatBorder",
  --           style = "rounded",
  --           text = {
  --             top = " SYSTEM ",
  --           },
  --         },
  --         win_options = {
  --           wrap = true,
  --           linebreak = true,
  --           foldcolumn = "2",
  --           winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --         },
  --       },
  --       popup_input = {
  --         prompt = "  ",
  --         border = {
  --           highlight = "FloatBorder",
  --           style = "rounded",
  --           text = {
  --             top_align = "center",
  --             top = " Prompt ",
  --           },
  --         },
  --         win_options = {
  --           winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --         },
  --         submit = "<C-Enter>",
  --         submit_n = "<Enter>",
  --         max_visible_lines = 20,
  --       },
  --       settings_window = {
  --         setting_sign = "  ",
  --         border = {
  --           style = "rounded",
  --           text = {
  --             top = " Settings ",
  --           },
  --         },
  --         win_options = {
  --           winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --         },
  --       },
  --       help_window = {
  --         setting_sign = "  ",
  --         border = {
  --           style = "rounded",
  --           text = {
  --             top = " Help ",
  --           },
  --         },
  --         win_options = {
  --           winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
  --         },
  --       },
  --       openai_params = {
  --         model = "gpt-3.5-turbo",
  --         frequency_penalty = 0,
  --         presence_penalty = 0,
  --         max_tokens = 300,
  --         temperature = 0,
  --         top_p = 1,
  --         n = 1,
  --       },
  --       openai_edit_params = {
  --         model = "gpt-3.5-turbo",
  --         frequency_penalty = 0,
  --         presence_penalty = 0,
  --         temperature = 0,
  --         top_p = 1,
  --         n = 1,
  --       },
  --       use_openai_functions_for_edits = false,
  --       actions_paths = {},
  --       show_quickfixes_cmd = "Trouble quickfix",
  --       predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv",
  --       highlights = {
  --         help_key = "@symbol",
  --         help_description = "@comment",
  --       },
  --     })
  --   end,
  --   keys = {
  --     { "<Leader>cgc", "<cmd>ChatGPT<CR>", "ChatGPT" },
  --     { "<Leader>cge", "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
  --     { "<Leader>cgg", "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
  --     { "<Leader>cgt", "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
  --     { "<Leader>cgk", "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
  --     { "<Leader>cgd", "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
  --     { "<Leader>cga", "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
  --     { "<Leader>cgo", "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
  --     { "<Leader>cgs", "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
  --     { "<Leader>cgf", "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
  --     { "<Leader>cgx", "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
  --     { "<Leader>cgr", "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
  --     {
  --       "<Leader>cgl",
  --       "<cmd>ChatGPTRun code_readability_analysis<CR>",
  --       "Code Readability Analysis",
  --       mode = { "n", "v" },
  --     },
  --   },
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "folke/trouble.nvim",
  --     "nvim-telescope/telescope.nvim",
  --   },
  -- },
  { "mg979/vim-visual-multi", event = "VeryLazy" },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  {
    "echasnovski/mini.hipatterns",
    event = "BufReadPre",
    opts = {
      highlighters = {
        hsl_color = {
          pattern = "hsl%(%d+,? %d+,? %d+%)",
          group = function(_, match)
            local utils = require("solarized-osaka.hsl")
            local h, s, l = match:match("hsl%((%d+),? (%d+),? (%d+)%)")
            h, s, l = tonumber(h), tonumber(s), tonumber(l)
            local hex_color = utils.hslToHex(h, s, l)
            return MiniHipatterns.compute_hex_color_group(hex_color, "bg")
          end,
        },
      },
    },
  },

  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Open file/folder in git repository
        browse = "<Leader>go",
      },
    },
  },

  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        "\\f",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
        desc = "Lists files in your current working directory, respects .gitignore",
      },
      {
        "\\r",
        function()
          local builtin = require("telescope.builtin")
          builtin.live_grep()
        end,
        desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
      },
      {
        "\\\\",
        function()
          local builtin = require("telescope.builtin")
          builtin.buffers()
        end,
        desc = "Lists open buffers",
      },
      {
        "\\t",
        function()
          local builtin = require("telescope.builtin")
          builtin.help_tags()
        end,
        desc = "Lists available help tags and opens a new window with the relevant help info on <cr>",
      },
      {
        "\\;",
        function()
          local builtin = require("telescope.builtin")
          builtin.resume()
        end,
        desc = "Resume the previous telescope picker",
      },
      {
        "\\e",
        function()
          local builtin = require("telescope.builtin")
          builtin.diagnostics()
        end,
        desc = "Lists Diagnostics for all open buffers or a specific buffer",
      },
      {
        "\\s",
        function()
          local builtin = require("telescope.builtin")
          builtin.treesitter()
        end,
        desc = "Lists Function names, variables, from Treesitter",
      },
      {
        "<Leader>sf",
        function()
          local telescope = require("telescope")

          local function telescope_buffer_dir()
            return vim.fn.expand("%:p:h")
          end

          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "Open File Browser with the path of the current buffer",
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local fb_actions = require("telescope").extensions.file_browser.actions

      opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
        wrap_results = true,
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          n = {},
        },
      })
      opts.pickers = {
        diagnostics = {
          theme = "ivy",
          initial_mode = "normal",
          layout_config = {
            preview_cutoff = 9999,
          },
        },
      }
      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
          mappings = {
            -- your custom insert mode mappings
            ["n"] = {
              -- your custom normal mode mappings
              ["N"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["/"] = function()
                vim.cmd("startinsert")
              end,
              ["<C-u>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_previous(prompt_bufnr)
                end
              end,
              ["<C-d>"] = function(prompt_bufnr)
                for i = 1, 10 do
                  actions.move_selection_next(prompt_bufnr)
                end
              end,
              ["<PageUp>"] = actions.preview_scrolling_up,
              ["<PageDown>"] = actions.preview_scrolling_down,
            },
          },
        },
      }
      telescope.setup(opts)
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("file_browser")
    end,
  },
}
