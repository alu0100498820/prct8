class Matriz

        attr_accessor :fil, :colum, :elem

        def initialize(fil, colum, elem)
                @fil = fil
                @colum = colum
                @elem = Array.new(elem)
        end
end
