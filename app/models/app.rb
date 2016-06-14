class App < ActiveRecord::Base
  validates :title, :url, presence: true
end
