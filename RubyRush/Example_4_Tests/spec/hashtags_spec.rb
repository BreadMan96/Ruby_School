require 'rspec'
require_relative 'hashtag_search.rb'

# так в RSpec начинается сценарий для конкретного класса/модуля/метода
describe search do

  it 'should do ok for KROKODILOV' do
    # ключевое слово-метод expect(...).to ...
    # ожидаем-что( нечто ).to - будет чем-то, например "eq" значит равно
    # обо всех возможностях RSpec см. документацию и материалы к уроку
    expect(search('Hello, #tik-tok, and #insta')).to eq '#tik-tok, #insta'
  end

  # простые случаи для КРОКОДИЛ
  it 'should do ok for KROKODIL ' do
    [1, 21, 31].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')}").to eq "#{i} krokodil"
    end
  end

  # простые случаи для КРОКОДИЛА
  it 'should do ok for KROKODILA ' do
    [2, 3, 4, 22, 33].each do |i|
      expect("#{i} #{Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')}").to eq "#{i} krokodila"
    end
  end
  it 'should do ok for KROKODILOV - SPECIAL' do
    [10, 11, 12, 13, 14, 111, 312, 1013, 2414].each do |i|
     expect("#{i} #{Sklonjator.sklonenie(i, 'krokodil', 'krokodila', 'krokodilov')}").to eq "#{i} krokodilov"
    end
  end
end

