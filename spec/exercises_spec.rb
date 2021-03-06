require './exercises.rb'
require 'pry-byebug'

describe 'Exercise 0' do
  it 'triples the length of a string' do
    result = Exercises.ex0('ha')
    expect(result).to eq ('hahaha')
  end
  
  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0('wishes')
    expect(result).to eq('nope')
  end
end

describe 'Exercise 1' do
  it 'returns the number of elements in an array' do
    result = Exercises.ex1([1,1,1])
    expect(result).to eq(3)
  end
end

describe 'Exercise 2' do
  it 'returns the 2nd element of an array' do
    result = Exercises.ex2([1,'cool',3])
    expect(result).to eq('cool')
  end
end

describe 'Exercise 3' do
  it 'adds all of the elements of an array together' do
    result = Exercises.ex3([5,5,5,1])
    expect(result).to eq(16)
  end 
end

describe 'Exercise 4' do
  it 'finds max number in an array' do
    result = Exercises.ex4([1,2,4,5,1])
    expect(result).to eq(5)
  end
end

describe 'Exercise 5' do
  it 'prints each element of an array' do
    STDOUT.should_receive(:puts).with('hello')
    STDOUT.should_receive(:puts).with('bye')  
    result = Exercises.ex5(['hello','bye'])
  end
end

describe 'Exercise 6' do
  it 'changes last item of array to panda' do
    result = Exercises.ex6([1,2,3,4])
    expect(result).to eq([1,2,3,'panda'])
  end
  
  it 'if the last word in the array is panda it changes it to GODZILLA' do
    result = Exercises.ex6([1,1,'panda'])
    expect(result).to eq([1,1,'GODZILLA'])
  end
end  

describe 'Exercise 7' do
  it 'adds a string to the end of array if the array contains the string' do
    result = Exercises.ex7([1,2,'hi',3],'hi')
    expect(result).to eq([1,2,'hi',3,'hi'])
  end
end

describe 'Exercise 8' do
  it 'prints out an array of hashes' do
    STDOUT.should_receive(:puts).with('bob - builder')
    STDOUT.should_receive(:puts).with('mike - hat')
    result = Exercises.ex8([{name: 'bob', occupation: 'builder'},{name: 'mike', occupation: 'hat'}])
  end
end

describe 'Exercise 9' do
  it 'returns true if date given is a leap year' do
    result = Exercises.ex9(1988)
    expect(result).to eq(true)
    result = Exercises.ex9(2000)
    expect(result).to eq(true)
  end
  
  it 'returns false if date given is not a leap year' do
    result = Exercises.ex9(2001)
    expect(result).to eq(false)
    result = Exercises.ex9(2100)
    expect(result).to eq(false)
  end
end

describe 'Exercise 10' do
  it 'returns happy hour if the current time is between 4 and 6' do
    my_time =  Time.new(2008,6,21, 16,30,0)
    allow(Time).to receive(:now).and_return(my_time)
    result = Exercises.ex10()
 #    expect(@time).to eq(my_time)
    expect(result).to eq('happy hour')
  end
  
  it 'returns normal prices if the time is not between 4 and 6PM' do
    my_time = Time.new(2014,6,21, 13,30,0)
    allow(Time).to receive(:now).and_return(my_time)
    result = Exercises.ex10()
    expect(result).to eq('normal prices')
  end
end

describe 'Exercise 11' do
  it 'returns the sum of two numbers if they are integers' do
    result = Exercises.ex11(1,2)
    expect(result).to eq(3)
  end
  
  it 'raise error if 2 inputs are not integers' do
    expect{ Exercises.ex11('foo','bar')}.to raise_error
  end
end 

describe 'Exercise 12' do
  it 'takes 2 characters and returns an array of the characters between' do 
    result = Exercises.ex12('d','g')
    expect(result).to eq(['d','e','f','g'])
  end
end
  
# describe 'Extremes' do
#   xit 'takes an array of strings and returns the most and the least occuring  values' do
#     result = Extentions.extremes(['x','x','x','a','a','y','z'])
#     expects(result).to eq({:most => 'x', :least => ['y','z']}
#   end
# end
