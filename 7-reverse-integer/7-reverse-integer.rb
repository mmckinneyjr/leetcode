# @param {Integer} x
# @return {Integer}
def reverse(x)
  n = (x.positive? ? x.to_s.reverse.to_i : (x.to_s + "-").reverse.to_i)
  n.bit_length < 32 ? n : 0
end