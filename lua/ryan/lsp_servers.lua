local function get_attached_lsp_servers()
  local servers = {}

  for _, client in pairs(vim.lsp.get_active_clients()) do
    if client.name == "null-ls" then
      goto continue
    end

    table.insert(servers, client.name)
    ::continue::
  end

  return servers
end

local function lsp_servers()
  local server_list = get_attached_lsp_servers()
  if #server_list <= 1 then
    return table.concat(server_list, ", ")
  else
    return "[" .. table.concat(server_list, ", ") .. "]"
  end
end

return lsp_servers
