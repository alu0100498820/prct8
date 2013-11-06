require "matriz"

describe Matriz do
        before :each do
                @m1 = Matriz.new([[1,9],[9,4]])
                @m2 = Matriz.new([[1,2],[2,3]]) 
        end

	describe "Operaciones de matrices" do

                it "Suma de matrices" do
                        (@m1 + @m2).matriz.should == [[2,11],[11,7]]
                end
		it "Resta de matrices" do
                        (@m1 - @m2).matriz.should == [[0,7],[7,1]]
                end
		it "Multiplicacion de matrices" do
                        (@m1 * @m2).matriz.should == [[19,29],[17,30]]
                end
		
        end
end

