class Image

  attr_accessor :image


  def initialize(image)

    self.image = image

  end



  def output_image

    image.each do |row|

      puts row.join

    end

  end



  def blurred

    location = []

    image.each_with_index do |row,i|

      row.each_with_index do |x, row_i|

      if x == 1

        location << [i, row_i]

      end

      end  

    end


    location.each do |i, row_i|

      image[i-1][row_i] = 1 

      image[i+1][row_i] = 1

      image[i][row_i-1] = 1

      image[i][row_i+1] = 0

    end  

  end


  def blur(distance)

    distance.times do

      blurred

end

end
    

end


image = Image.new([

  [0, 0, 0, 0, 0],

  [0, 1, 0, 0, 0],

  [0, 0, 0, 0, 0],

  [0, 0, 0, 1, 0],

  [0, 0, 0, 0, 0],

  [0, 0, 0, 0, 0],

])

image.blur(2)

image.output_image