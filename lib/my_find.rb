require 'pry'
array = (1..100).to_a

def my_find(collection)
    i = 0
    while i < collection.length
        if yield(collection[i])
            return collection[i]
        end
        i += 1
    end
end

my_find(array){|i| i%3 == 0 && i%5 == 0}