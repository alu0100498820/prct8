require "matriz.rb"

describe Matriz do
        before :each do
                @m1 = Matriz.new([[1,9],[9,4]])
                @m2 = Matriz.new([[5,4],[4,8]])
		@m3 = Matriz.new(2,2,[[7,10],[15,22]])
              
        end
	describe "Comprobacion: " do
               it "Filas matriz 2x2" do
                       @m1.fil.should eq(2)
               end
               it "Columnas matriz 2x2" do
                       @m1.colum.should eq(2)
               end
        end

	describe "Operaciones de matrices" do
                it "suma de matrices" do
                      @m1.+(@m1).to_s.should eq(@m2.to_s)
                end
		it "resta de matrices" do
                        @m2.-(@m1).to_s.should eq(@m1.to_s)
                end
		it "Multiplicacion de matrices 2x2" do
                        @m1.x(@m1).to_s.should eq(@m3.to_s)
                end
        end
end

