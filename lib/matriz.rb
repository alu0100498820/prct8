class Matriz

        attr_accessor :fila, :columna, :matriz

        def initialize(m)
                @fila = m.size
                @columna = m[1].size
                @matriz = m
        end

   # Suma entre dos Matrices

    def +(other)
      i=0
      	m_aux = @matriz
            while i < @fila
             j=0
          	while j < @columna
            	   m_aux[i][j] = m_aux[i][j] + other.matriz[i][j]
              	   j += 1
          	end
             i += 1
        end
        Matriz.new(m_aux)
    end

   # Resta entre dos Matrices 

    def -(other)
      i=0
      	m_aux = @matriz
            while i < @fila
             j=0
          	while j < @columna
            	   m_aux[i][j] = m_aux[i][j] - other.matriz[i][j]
              	   j += 1
          	end
             i += 1
        end
        Matriz.new(m_aux)
    end

  # Multiplicacion de 2 matrices

 def * (other)
    i=0
      m_aux = Array.new(@fila) {Array.new(other.columna,0)}
      while i < @fila
            j = 0
              while j < other.columna
                  m_aux[i][j] = 0
                  k = 0
                    while k < @columna
                      m_aux[i][j] += matriz[i][k] * other.matriz[k][j]
                      k += 1
                    end
                    j +=1
              end
              i +=1
      end
      Matriz.new(m_aux)
  end


end
