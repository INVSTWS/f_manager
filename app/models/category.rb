class Category < ApplicationRecord
    has_many :operations, dependent: :destroy
    searchkick
end
