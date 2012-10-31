require 'ratlib'

describe "Ratnum" do
before :each do
@ratnum=Ratnum.new(7,5)
end

it "Debe existir un numerador" do
@ratnum.numerador.should == 9
end

it "Debe existir un denominador" do
@ratnum.denominador.should == 9
end

it "Debe de estar en su forma reducida" do
@ratnum.reduc.should == 9,9
end

it "Se debe invocar al metodo num() para obtener el numerador" do
@ratnum.num().should == 7
end

it "Se debe invorcar al metodo denom() para obtener el denominador" do
@ratnum.denom().should == 5
end

it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
@ratnum.mostrar.should == 7/5
end

end
