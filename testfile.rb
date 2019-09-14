

onehundred = [

[1, 5, 7],

[8, 10, 100]

]


onehundred.each_with_index do | x, x_index |

  x.each_with_index do | y, y_index |

    puts "The x index is #{x_index}" 

    puts "The y index is #{y_index}"

    puts y.inspect

  end

end


x = [1, 5, 7]

y = 1

y = 5

y = 7 

x = [8, 10 , 100]

y = 8 

y = 10

y = 100


