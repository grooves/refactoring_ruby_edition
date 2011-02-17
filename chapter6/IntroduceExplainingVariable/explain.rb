is_mac_os = platform.upcase.index("MAC")
is_ie = browser.upcase.index("IE")
was_resized = resize > 0
if (is_mac_os && is_ie && initialized? && was_resized)
 # do something
end
