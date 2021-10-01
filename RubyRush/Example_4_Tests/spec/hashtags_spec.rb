require 'rspec'
require './hashtag_search.rb'

describe 'search' do
  it 'returns single hastag' do
    expect(search('words with #tags')).to eq %w(#tags)
  end

  it 'returns multiple hastags' do
    expect(search('#words with #tags')).to eq %w(#words #tags)
  end

  it 'returns hastags with russian' do
    expect(search('слова с #тегами')).to eq %w(#тегами)
  end

  it 'returns hastags with underscores' do
    expect(search('words #with_tags')).to eq %w(#with_tags)
  end

  it 'returns hastags with minuses' do
    expect(search('words #with-tags')).to eq %w(#with-tags)
  end

  it 'does not return question mark' do
    expect(search('words #with? tags')).to eq %w(#with)
  end

  it 'does not return exclamation mark' do
    expect(search('words #with! tags')).to eq %w(#with)
  end
end

