N, Q = gets.chomp.split.map(&:to_i)
linked_trains = Hash.new{|h,k| h[k] = -1}
rlinked_trains = Hash.new{|h,k| h[k] = -1}
def getLinkedTrains(num,l,r,res=[])
    res.push num
    if l[num] == -1
        return res
    else
        res = getLinkedTrains(l[num],l,r,res)
    end
end
def getRlinkedTrains(num,l,r,res=[])
    res.push num
    if r[num] == -1
        return res
    else
        res = getRlinkedTrains(r[num],l,r,res)
    end
end

(1..Q).each do |i|
    q = gets.chomp.split.map(&:to_i)
    if q[0] == 1
        linked_trains[q[1]] = q[2]
        rlinked_trains[q[2]] = q[1]
    elsif q[0] == 2
        linked_trains.delete(q[1])
        rlinked_trains.delete(q[2])
    else
        a = getLinkedTrains(q[1],linked_trains,rlinked_trains)
        b = getRlinkedTrains(q[1],linked_trains,rlinked_trains).reverse
        c = b + a
        c = c.uniq
        puts "#{c.length} #{c.join(' ')}"
    end
end