class Post < ActiveRecord::Base
  attr_accessible :body, :featured, :publish_on, :title, :category_ids
  has_many :post_categories, dependent: :destroy
  has_many :categories, through: :post_categories
end
