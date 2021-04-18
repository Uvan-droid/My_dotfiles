
local gl = require("galaxyline")
local gls = gl.section

gl.short_line_list = {" "} -- keeping this table { } as empty will show inactive statuslines

local colors = {
    bg = "#303030",
    line_bg = "#303030",
    fg = "#ebdbb2",
    fg_green = "98971a",
    yellow = "#fe8019",
    cyan = "#22262C",
    darkblue = "#61afef",
    green = "#98971a",
    orange = "#ffc93c",
    purple = "#252930",
    magenta = "#c678dd",
    blue = "#458588",
    red = "#cc241d",
    lightbg = "#262626",
    nord = "#32302f",
    greenYel = "#EBCB8B",
    w = "#f05945"
}

gls.left[1] = {
    leftRounded = {
        provider = function()
            return " "
        end,
        highlight = {colors.orange, colors.bg}
    }
}

gls.left[2] = {
    statusIcon = {
        provider = function()
            return " ✎  "
        end,
        highlight = {colors.w, colors.orange},
        separator = " ",
        separator_highlight = {colors.blue, colors.lightbg}
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = buffer_not_empty,
        highlight = {require("galaxyline.provider_fileinfo").get_file_icon_color, colors.lightbg}
    }
}

gls.left[4] = {
    FileName = {
        provider = {"FileName", "FileSize"},
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.lightbg}
    }
}

gls.left[5] = {
    teech = {
        provider = function()
            return " "
        end,
        separator = "",
        highlight = {colors.lightbg, colors.bg}
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 40 then
        return true
    end
    return false
end

gls.left[6] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.green, colors.lightbg}
    }
}

gls.left[7] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.orange, colors.lightbg}
    }
}

gls.left[8] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = " ",
        highlight = {colors.magenta, colors.line_bg}
    }
}

gls.left[9] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.red, colors.bg}
    }
}

gls.left[10] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "   ",
        highlight = {colors.yellow, colors.bg}
    }
}

gls.right[1] = {
    GitIcon = {
        provider = function()
            return "   "
        end,
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

gls.right[2] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.green, colors.line_bg}
    }
}

gls.right[3] = {
    right_LeftRounded = {
        provider = function()
            return ""
        end,
        separator = " ",
        separator_highlight = {colors.bg, colors.bg},
        highlight = {colors.red, colors.bg}
    }
}

local alias = {
	n = "NORMAL",
        i = "INSERT",
        c = "COMMAND",
        V = "VISUAL",
        [""] = "VISUAL",
        v = "VISUAL",
        R = "REPLACE"
}

local mode_color = {
	n = colors.blue,
        i = colors.green,
        v = colors.purple,
        [''] = colors.purple,
        V = colors.purple,
	c = colors.magenta,
        no = colors.blue,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.red,
        Rv = colors.red,
        cv = colors.blue,
        ce = colors.blue,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.blue,
        t = colors.blue
}


gls.right[4] = {
    ViMode = {
	    provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color[vim.fn.mode()])
            return alias[vim.fn.mode()]
        end,
        highlight = {colors.red, colors.red}
    }
}

gls.right[5] = {
    PerCent = {
        provider = "LinePercent",
        separator = " ",
        separator_highlight = {colors.red, colors.red},
        highlight = {colors.bg, colors.fg}
    }
}

gls.right[6] = {
    rightRounded = {
        provider = function()
            return " "
        end,
        highlight = {colors.fg, colors.bg}
    }
}
