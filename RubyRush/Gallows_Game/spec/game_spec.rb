require 'rspec'
require './gallows_game_class.rb'

describe 'Game' do
  it 'user wins the game' do
    # Загадываем слово
    game = Game.new('book')

    # Убедимся, что в начале игры статус — игра в процессе
    expect(game.status).to eq 0

    # Удачно отгадаем несколько букв, симулируя действия игрока
    game.next_step 'b'
    game.next_step 'o'
    game.next_step 'k'

    # Теперь изучем состояние экземпляра game: количество ошибок и статус
    expect(game.errors).to eq 0
    expect(game.status).to eq 1
  end

  # Тест на случай игры, где игрок проигрывает
  it 'user loses the game' do
    # Снова загадаем слово, для интереса — другое
    game = Game.new('example')

    # На этот раз попытки пользователя будут не столь успешные
    game.next_step 'w'
    game.next_step 'z'
    game.next_step 'c'
    game.next_step 'v'
    game.next_step 't'
    game.next_step 'n'


    # И снова проверим состояние игры: у нас 7 ошибок и игра проиграна
    expect(game.errors).to eq 5
    expect(game.status).to eq -1
  end
end
