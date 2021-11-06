n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
nums = Hash.new{|h,k| h[k] = 0}
counts = Hash.new{|h,k| h[k] = 0}
(0..n-1).each do |i|
    num = a[i] % 200
    nums[num] += counts[num]
    counts[num] += 1
end
puts nums.values.inject(:+)

# 純粋な全探索では2*10^5^2(n^2)となり余裕でタイムオーバー
# n^1のループで解決する工夫が必要だった.
# count = 0
# (0..n-1).each do |i|
#     (1+i..n-1).each do |j|
#         if (a[i] - a[j]) % 200 == 0
#             count += 1
#         end
#     end
# end

# puts count