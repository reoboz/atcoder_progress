N = gets.to_i
a = Hash.new{|h,k|h[k] = 0}
b = Hash.new{|h,k|h[k] = 0}
(1..N-1).each do |i|
    t_a,t_b = gets.chomp.split.map(&:to_i)
    a[t_a] += 1
    b[t_b] += 1
end
res = Hash.new{|h,k|h[k] = 0}
a.each do |k,v|
    res[k] += v
end

b.each do |k,v|
    res[k] += v
end

res.each do |k,v|
    if v >= N-1
        puts "Yes"
        exit
    end
end
puts "No"