def convert_length(l, s, d)
  units = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }
  (l / units[s] * units[d]).round(2)
end
