class Operation < ApplicationRecord
  belongs_to :category
  searchkick
end
