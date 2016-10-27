require 'spec_helper'

describe 'Basic scope #by_attribute' do

  before(:each) do
    @article = Article.create({title: 'abc'})
    @article_x = Article.create({title: 'bcd'})
    @article_y = Article.create({title: 'cde'})
  end

	it 'should validate by_attribute' do
		articles = Article.by_attribute(:title)
		expect(articles.first).to eq(@article)
	end

  it 'should validate by_attribute_reverse' do
    articles = Article.by_attribute_reverse(:title)
    expect(articles.first).to eq(@article_y)
  end

end