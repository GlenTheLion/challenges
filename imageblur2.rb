class Image                

  attr_accessor :data    


  def initialize(data)      

    @data = data            

  end



  def find_on

    on = [ ]                

      data.each_with_index do |on, row_index|   

        on.each_with_index do |off, col_index|  

          if off == 1

          on << [row_index, col_index]

          end                  

        end                    

    end                        

    return on

  end                          





  def blur

    number_of_rows = data.length

    number_of_columns = data[0].length 

    find_on.each do |place|   

      data[place[0]][place[1] + 1] = 1 unless place[1]+1 >= number_of_columns         

      data[place[0]][place[1] - 1] = 1 unless place[1] == 0                           

      data[place[0] + 1][place[1]] = 1 unless place[0]+1 >= number_of_rows            

      data[place[0] - 1][place[1]] = 1 unless place[0] == 0                           

                      

    end

  end                          




 def output_image

    data.each do |x|

      puts x.join

    end

  end





end                          
  

  image = Image.new([              
  [0, 0, 0, 0],           

  [0, 1, 1, 0],

  [1, 1, 1, 1],

  [0, 1, 1, 0]

])                            



image.blur

image.output_image
