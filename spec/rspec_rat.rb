require 'ratlib'

describe "Ratnum" do
before :each do
@ratnum=Ratnum.new(7,5)
end

it "Debe existir un numerador" do
@ratnum.numerador.should_not be_nil
end

it "Debe existir un denominador" do
@ratnum.denominador.should_not be_nil
end

it "Debe de estar en su forma reducida" do
a = @ratnum.numerador
b = @ratnum.denominador
i = 1
j = 1
while ((i < a+1) and (i < b+1)) do
	if ((a%1 == 0) and (b%i == 0))
		j = i
	end
	i = i+1
end
(j == 1).should be_false
end

it "Se debe invocar al metodo num() para obtener el numerador" do
@ratnum.num().should_not be_nil
end

it "Se debe invorcar al metodo denom() para obtener el denominador" do
@ratnum.den().should_not be_nil
end

it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
@ratnum.racional == "#{@ratnum.num()}/#{@ratnum.den()}"
end

it "Se debe mostar por la consola la fraccion en formato flotante" do
@ratnum.flot().should be_kin_of (Float)
end

it "Se debe comparar si dos fracciones son iguales con ==" do 
@ratnum = Ratnum.new(7,5)
(@ratnum == @ratnum).should be_true
end

it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
@ratnum1=Ratnum.new(-6,3)
@ratnum2=Ratnum.new(6,3)
@ratnum1.abs.should == @ratnum2
end

it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
@ratnum2=Ratnum.new(5,7)
@ratnum.recip.should == @ratnum2
end

it "Se debe calcular el opuesto de una fraccion con -" do
@ratnum3=Ratnum.new(-7,5)
@ratnum3.should == -@ratnum
end

it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
@ratnum3=Ratnum.new(2,4)
@ratnum4=Ratnum.new(2,4)
@ratnum5=Ratnum.new(1,2)
(@ratnum3 + @ratnum4).should == @ratnum5
end

it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
@ratnum1=Ratnum.new(4,5)
@ratnum2=Ratnum.new(2,2)
@ratnum3=Ratnum.new(2,3)
(@ratnum1 - @ratnum2).should == @ratnum3
end

it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
@ratnum1=Ratnum.new(2,3)
@ratnum2=Ratnum.new(2,3)
@ratnum3=Ratnum.new(4,9)
(@ratnum1 * @ratnum2).should == @ratnum3
end

it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
@ratnum1=Ratnum.new(5,4)
@ratnum2=Ratnum.new(5,4)
@ratnum3=Ratnum.new(1,1)
(@ratnum1 / @ratnum2).should == @ratnum3
end

it "Se debe de poder comprobar si una fracion es menor que otra" do
@ratnum1=Ratnum.new(1,1)
(@ratnum1 < @ratnum).should be_true
end

it "Se debe de poder comprobar si una fracion es menor que otra" do
@ratnum1=Ratnum.new(1,1)
(@ratnum1 <= @ratnum).should be_true
(@ratnum = @ratnum).should be_true
end


it "Se debe de poder comprobar si una fracion es mayor que otra" do
@ratnum1=Ratnum.new(1,1)
(@ratnum1 > @ratnum).should be_false
end

it "Se debe de poder comprobar si una fracion es mayor que otra" do
@ratnum1=Ratnum.new(1,1)
(@ratnum1 >= @ratnum).should be_false
(@ratnum = @ratnum).should be_true
end
end
