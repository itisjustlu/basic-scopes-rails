require 'spec_helper'

describe 'Basic scope' do
  before(:each) do
    @article = Article.create({title: 'Id 1'})
    @article_x = Article.create({title: 'Id 2'})
    @article_y = Article.create({title: 'Id 3'})
  end

  it 'should validate excluded ids' do
    articles = Article.excluded_ids([2, 3])
    expect(articles.first).to eq(@article)
  end

  it 'should validate excluded id' do
    articles = Article.excluded_id(1)
    expect(articles.first).to eq(@article_x)
    expect(articles.last).to eq(@article_y)
  end
end