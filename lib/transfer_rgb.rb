def to_hex(r, g, b)
  [r, g, b].inject('#') { |result, s| result + format('%02x', s) }
end

def to_ints(color_cd)
  [1, 3, 5].map { |n| color_cd[n, 2].hex }
end
