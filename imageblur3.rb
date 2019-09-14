class Image                

  attr_accessor :data    

  def initialize(data)      

    @data = data            

  end

  def active
    numbers = [ ]                
      @data.each_with_index do |row, row_index|   
        row.each_with_index do |col, col_index|  
          numbers << [row_index, col_index] if col == 1 
        end                  
      end                    
    numbers
  end                       
                       

  def blur(distance=1)
    
    numbers = active

    @data.each_with_index do |row, row_index|

      row.each_with_index do |col, col_index|

        numbers.each do |r, c|
          manhattandistance = (row_index - r).abs + (col_index - c).abs
          if manhattandistance <= distance
            @data[row_index][col_index] = 1

          end
        end
      end
    end
  end  
                         


 def output_image

    data.each do |x|

      puts x.join

    end
  end

end
  

  image = Image.new([   

  [0, 0, 0, 0, 0, 0],           

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0, 1, 0],

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0, 0, 0],

  [0, 0, 0, 0 , 0, 0]

])                            


image.blur(3)

image.output_image



# https://codereview.stackexchange.com/questions/125775/idiomatic-ruby-to-calculate-distance-to-points-on-a-graph
# Used to understand manhattan distance in code.
#if the manhattan distance between where you are and the current 1 is and a pixel 2 away is less than te distance you passed in then you want to make it set to 1
