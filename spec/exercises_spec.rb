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