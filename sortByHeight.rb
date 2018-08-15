# Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!

# Example

# For a = [-1, 150, 190, 170, -1, -1, 160, 180], the output should be
# sortByHeight(a) = [-1, 150, 160, 170, -1, -1, 180, 190].

def sortByHeight(a)
    x = a.select { |i| i > 0 }.sort
    a.map { |i| i > 0 ? x.shift : -1 }
end

# def sortByHeight(a)
#     x = a.map { |i| i if i != -1 }.compact.sort
#     a.map { |i| 
#         if i != -1 
#             x.shift
#         else -1
#         end
#     }
# end