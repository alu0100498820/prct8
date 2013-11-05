class Matriz

        attr_accessor :fil, :colum, :elem

        def initialize(fil, colum, elem)
                @fil = fil
                @colum = colum
                @elem = Array.new(elem)
        end


	def +(other)
                
                elem = Array.new
                @fil.times do |i|
                        elem_fil = Array.new
                        @colum.times do |j|
                                elem_fil << @elem[i][j] + other.elem[i][j]
                        end
                        elem << elem_fil
                end
                Matriz.new(@fil, @colum,elem)
        end
end
