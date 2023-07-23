class Category < ApplicationRecord
    has_many :operations, dependent: :destroy
end
