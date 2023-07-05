class Product < ApplicationRecord
    validates :name, :price, presence: true
    validates :price, comparison: { greater_than: 0 }
end
