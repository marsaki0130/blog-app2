require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:user) { create (:user)}


  context 'タイトルと内容が入力されている場合' do
    let!(:article) do
      user.articles.build({
        title: Faker::Lorem.characters(number: 10),
        content: Faker::Lorem.characters(number: 300)
      })
    end
    
    it '記事を保存できる' do
      puts user.email  
      expect(article).to be_valid
    end
  end
end
