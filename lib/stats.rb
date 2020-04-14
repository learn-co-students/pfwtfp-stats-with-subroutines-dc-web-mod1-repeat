require 'pry'
def mean(array)
    sum = 0.0
    array.each do |item|
        sum += item
    end
    sum / array.size
end

def median(array)
    order = array.sort!
    median = (array.size - 1) / 2
    if array.size.odd? #helper(array)
        order[median]
    else
        median2 = median + 1
        (order[median] + order[median2]) / 2.0
    end
end

# array = [55, 96, 95, 13, 37]
# binding.pry
# def helper(array)
#     array.size.odd?
# end

# puts helper([55,44])
# puts helper([55,44,33])
# puts median(array)

def mode(array)
    array.group_by {|i| i }.max_by{|k, v| v.length}.first
end

# array = [63, 60, 1, 51, 90, 69, 97, 29, 24, 62, 7, 43, 33, 79, 48, 37, 20, 94, 49, 21, 78, 28, 54, 0, 64, 18, 63, 37, 56, 56, 71, 37, 46, 33, 1, 85, 74, 99, 91, 16, 80, 32, 16, 18, 75, 55, 96, 95, 13, 37, 30, 48, 61, 33, 52, 2, 28, 36, 90, 44, 48, 59, 74, 54, 91, 21, 56, 39, 29, 32, 48, 9, 33, 60, 88, 55, 11, 84, 10, 80, 76, 68, 44, 44, 19, 16, 98, 39, 50, 65, 35, 45, 52, 1, 18, 63, 2, 87, 99, 20]
# # binding.pry
# def helper(array)
#     array.group_by {|i| i }.max_by{|k, v| v.length}.first
# end
# puts helper(array)

def standard_deviation(array)
    m = mean(array)
    sum = 0.0
    array.each {|v| sum += (v-m)**2 }
    average = sum / array.size
    Math.sqrt(average)
end

# def sigma(array)
#     Math.sqrt(standard_deviation(array))
# end

# puts standard_deviation(array)
# puts sigma(array)