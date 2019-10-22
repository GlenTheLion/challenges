class Image            # This is the class for the object I want to build which is an image.    

  attr_accessor :data  # this is the attribute accessor which is called data it allows people outside of the class can access the data (re-examine)

  def initialize(data)  # will accept the attribute data.    

    @data = data        # store the attribute data, and allows it to be used each time.    

  end

  def active              # The active method looks for all the co-ordinates where there are 1 and returns the coordinates of those pixels.
    numbers = [ ]         # gets numbers ready to recieve array       
      @data.each_with_index do |row, row_index|  # breaks down the array down to individual number and its index. 
        row.each_with_index do |col, col_index|   # further focuses the array into each individual item in the column 
          numbers << [row_index, col_index] if col == 1 # if an object is detected that is a 1 pushes the coordinates to the array
        end                  # end of if statement
      end                    # end of row.each_with_index
    numbers
  end                        #end of data.each_with_index 
                       
  def blur(distance=1)  # method called blur 

    numbers = active 
    
    @data.each_with_index do |row, row_index| # "" same as above

      row.each_with_index do |col, col_index| # "" same as above

        numbers.each do |r, c| #runs the loop again to find the active numbers, and their manhattan distance and if their mh distance is less than or equal to the users desired distance then sets it to 1
          manhattandistance = (row_index - r).abs + (col_index - c).abs
          if manhattandistance <= distance
            @data[row_index][col_index] = 1

          end
        end
      end
    end
  end  
                         
 def output_image # method for showing the image

    data.each do |x| # calls data and runs data on every x

      puts x.join #causes the numbers to show as an array as opposed to individual numbers

    end  # end of data.each do
  end    # end of output_image method

end    # end of the class object
  

  image = Image.new([   #the array being shown

  [0, 0, 0, 0, 0, 0],           

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0, 1, 0],

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0 , 0, 0]

])                            


image.blur(3)  #runs the image blur

image.output_image # shows the image that is blurred.



# https://codereview.stackexchange.com/questions/125775/idiomatic-ruby-to-calculate-distance-to-points-on-a-graph
# Used to understand manhattan distance in code.
#if the manhattan distance between where you are and the current 1 is and a pixel 2 away is less than te distance you passed in then you want to make it set to 1
