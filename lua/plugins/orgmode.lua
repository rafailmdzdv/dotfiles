return {
    {
        "nvim-orgmode/orgmode",
        event = "VeryLazy",
        ft = { "org" },
        opts = {
            org_agenda_files = "~/orgfiles/**/*",
            org_default_notes_file = "~/orgfiles/refile.org",
        },
    },
    {
        "chipsenkbeil/org-roam.nvim",
        tag = "0.1.1",
        dependencies = {
            {
                "nvim-orgmode/orgmode",
                tag = "0.3.7",
            },
        },
        opts = {
            directory = "~/orgfiles",
        },
    },
}
