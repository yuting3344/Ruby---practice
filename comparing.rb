1

require 'set'

def alphabet(ns)
    # 排除1並排序去重
    ns = ns.reject { |x| x == 1 }.sort.uniq
    
    # 建立乘積集合
    products = Set.new

    ns.each_with_index do |a, i|
        ns.each_with_index do |b, j|
        next if i == j # 避免使用相同元素
        products.add(a * b)
        end
    end

    # 返回不是乘積的最大值
    (ns - products.to_a).max
end
# test
ns = [2, 3, 4, 1, 12, 6, 2, 4]
result = alphabet(ns)
puts "The largest number that is not a product: #{result}"


# 2 

def alphabet(ns)
    a, b, x, y, _, _, _, cd = ns.sort
    cd / (x != a * b ? x : y)
end

# test
ns = [2, 6, 7, 3, 14, 35, 15, 5]
result = alphabet(ns)
puts "The largest number that is not a product: #{result}"



# 3

require 'set'

def alphabet(ns)
    return nil if ns.nil? || ns.empty?

    # 排除1並排序去重
    ns = ns.reject { |x| x == 1 }.sort.uniq
    
    # 建立乘積集合
    products = Set.new

    ns.each_with_index do |a, i|
        ns.each_with_index do |b, j|
        next if i == j # 避免使用相同元素
        products.add(a * b)
        end
    end

    # 返回不是乘積的最大值
    (ns - products.to_a).max
end

# test
ns = [2, 6, 7, 3, 14, 35, 15, 5]
result = alphabet(ns)
puts "The largest number that is not a product: #{result}"