
class Image

     
  def initialize(image_data)
 
    @image_data = image_data

  end


  def output_image

    @image_data.each do |row|

      puts row.join

    end

  end

  def blur

    @image_data.each do |row| 

      row.each do |pixel| 
        puts pixel 

      end

    end

  end

end


image1 = Image.new([

  [0, 0, 0, 0, ],

  [0, 1, 0, 0, ],

  [0, 0, 0, 0, ],

  [0, 0, 0, 1, ],

])




image1.blur