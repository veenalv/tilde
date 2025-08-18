return {
    "https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim.git",
    -- Activate when a file is created/opened
    event = { "BufReadPre", "BufNewFile" },
    -- Activate when a supported filetype is open
    ft = { "go", "javascript", "python", "ruby" },
    cond = function()
        -- Only activate if token is present in environment variable.
        -- Remove this line to use the interactive workflow.
        return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= ""
    end,
    opts = {
        statusline = {
            -- Hook into the built-in statusline to indicate the status
            -- of the GitLab Duo Code Suggestions integration
            enabled = true,
        },
    },
    config = function()
        require("gitlab").setup({
            statusline = {
                enabled = false,
            },
            -- AAAAA this flag is the one that enables generative suggestions -.-
            resource_editing = {
                enabled = true,
            },
            code_suggestions = {
                --# For the full list of default languages, see the 'auto_filetypes' array in
                --# https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim/-/blob/main/lua/gitlab/config/defaults.lua
                auto_filetypes = { "markdown", "python", "sh", "go", "javascript" }, -- Default is { 'ruby' }
                enabled = true,
                fix_newlines = true,
                lsp_binary_path = "node",
                offset_encoding = "utf-16",
                redact_secrets = true,
            },
            language_server = {
                workspace_settings = {
                    codeCompletion = {
                        enableSecretRedaction = true,
                    },
                    telemetry = {
                        enabled = false,
                        trackingUrl = nil,
                    },
                },
            },
            minimal_message_level = vim.log.levels.ERROR,
        })
    end,
}
