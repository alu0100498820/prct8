class Matriz

        attr_accessor :fil, :colum, :elem

        def initialize(fil, colum, elem)
                @fil = fil
                @colum = colum
                @elem = Array.new(elem)
        end


	def to_s
                imp = ""
                @fil.times do |i|
                        @colum.times do |j|
                                imp << "#{elem[i][j]} "
                        end
                        imp << "\n"
                end
                imp
        end

	# Suma entre dos Matrices
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

	# Resta entre dos Matrices 

	def -(other)
                
                elem = Array.new
                @fil.times do |i|
                        elem_fil = Array.new
                        @colum.times do |j|
                                elem_fil << @elem[i][j] - other.elem[i][j]
                        end
                        elem << elem_fil
                end
                Matriz.new(@fil, @colum,elem)
        end

	#Multiplicacion de 2 matrices

	def *(other)
                
                elem = Array.new
                cont = 0
                @fil.times do |i|
                        elem_fil = Array.new
                        other.colum.times do |j|
                                cont = 0
                                @colum.times do |k|
                                        cont += @elem[i][k] * other.elem[k][j]
                                end
                                elem_fil << cont
                        end
                        elem << elem_fil
                end
                Matriz.new(@fil, other.colum, elem)
        end

end
