N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.sort!
mod = 1000000007
patterns = 1
(0..a.length-1).each do |i|
    x = (a[i] - i)
    patterns *= x
    patterns %= mod
end

puts patterns