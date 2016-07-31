class Animal < ActiveRecord::Base

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image_path, presence: true
  enum status: %w[active extinct]

  belongs_to :category
  has_many :order_animals
  has_many :orders, through: :order_animals

  def extinct?
    status == "extinct"
  end
end