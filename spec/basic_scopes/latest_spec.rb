require 'spec_helper'

describe 'My behaviour' do

  it 'should do something' do
	  article = Article.create(title: 'Custom title')
	  expect(article.title).to eq('Custom title')
  end
end