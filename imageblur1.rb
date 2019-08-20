class Image

     
 def initialize(image_data)
 
 @image_data = image_data

end



  def output_image

    image.each do |row|

      puts row.join

    end

  end

end



image = Image.new([

  [0, 0, 0, 0, ],

  [0, 1, 0, 0, ],

  [0, 0, 0, 0, ],

  [0, 0, 0, 1, ],

])


image.output_image