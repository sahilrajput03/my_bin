function Set (list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

arr_applications = Set {
"Emoji Picker"
}

if (arr_applications[get_application_name()]) then
  pin_window();
end

