require 'csv'

namespace :data do
  desc "산업재해 관련 기사와 컨텐츠 목록을 불러옵니다"
  task load_cards: :environment do
    ActiveRecord::Base.transaction do
      Card.delete_all
      CSV.foreach('db/cards.csv', headers: true) do |csv|
        puts csv['title']
        Card.create csv.to_h
      end
    end
  end

end
