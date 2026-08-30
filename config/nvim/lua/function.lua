--[[
function RestartNvim()
    -- 現在のバッファ情報を保存
    vim.cmd("wa")  -- 全バッファ保存
    local args = vim.fn.argv()
    local cmd = "nvim"
    -- 元の引数を保持して再起動
    if #args > 0 then
        cmd = cmd .. " " .. table.concat(args, " ")
    end
    -- Neovim を終了して再起動
    vim.cmd("qa")
    os.execute(cmd)
end
]]

function ReloadConfig()
    -- Lua モジュールキャッシュをクリア
    for name,_ in pairs(package.loaded) do
        if name:match("^user") or name:match("^plugins") then
            package.loaded[name] = nil
        end
    end
    -- init.lua を再読み込み
    dofile(vim.fn.stdpath('config') .. '/init.lua')
    print("Configuration reloaded!")
end
