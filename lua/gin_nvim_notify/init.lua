local notify = require("notify")

local client_notifs = {}

local function get_notif_data(key)
  if not client_notifs[key] then
    client_notifs[key] = {}
  end
  return client_notifs[key]
end

local function start(args)
  local command = table.concat(args, " ")
  local notif_data = get_notif_data(command)
  notif_data.notification = notify("", nil, {
    title = command,
  })
end

local function write(chunk, args)
  local command = table.concat(args, " ")
  local notif_data = get_notif_data(command)
  notif_data.notification = notify(chunk, nil, {
    title = command,
    replace = notif_data.notification,
  })
end

local function close(args)
  -- Do NOTHING
end

return {
  start = start,
  write = write,
  close = close,
}
