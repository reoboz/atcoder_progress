n = gets.chomp.chars.map(&:to_i)
n = n.sort.reverse

a = []
b = []
(1..n.length).each do |i|
    if i%2 == 1
        a.push n[i-1]
    else
        b.push n[i-1]
    end
end

(1..b.length).each do |i|
    if a[i-1] != b[i-1]
        a_replace = b[i-1]
        b_replace = a[i-1]
        a[i-1] = a_replace
        b[i-1] = b_replace
        break
    end
end

puts a.join.to_i * b.join.to_i