class Image

    attr_accessor :image

    
    def initialize(image)

        @image = image

    end

    
    def output_image

        @image.each do |row|

            puts row.join

        end

    end

    
    def blur (distance=1)

        distance.times do

            numbers

        end

    end

    

    private

    

    def numbers

        numbers = []

 @image.each_with_index do |row, i|

    row.each_with_index do |j, row_i|

    numbers << [i, row_i] if j == 1

end

end

        
numbers.each do |number|

    @image[number[0]] [number [1] + 1] = 1 <= @image[number[0]].length - 1

    @image[number[0]][number[1] - 1] = 1 if number[1] - 1 >= 0

    @image[number[0] + 1][number[1]] = 1 if number[0] + 1 <= @image.length - 1

    @image[number[0] - 1][number[1]] = 1 if number[0] - 1 >= 0

end

end

end


image = Image.new([

                  [0, 0, 0, 0],

                  [0, 1, 0, 0],

                  [0, 0, 0, 1],

                  [0, 0, 0, 0]

                  ])

image.blur

image.output_image