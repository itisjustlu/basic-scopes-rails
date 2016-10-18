require 'spec_helper'

describe 'Basic scope' do
	before(:each) do
		@article = Article.create({created_at: Time.now, title: 'Recent'})
		@article_x = Article.create({created_at: 10.minutes.ago, title: 'Older'})
		@article_y = Article.create({created_at: 5.minutes.ago, title: 'Middle'})
	end

  it 'should validate latest' do
	  articles = Article.latest
	  expect(articles.first).to eq(@article)
	  expect(articles.last).to eq(@article_x)
  end

	it 'should validate latest reverse' do
		articles = Article.latest_reverse
		expect(articles.last).to eq(@article)
		expect(articles.first).to eq(@article_x)
	end
end