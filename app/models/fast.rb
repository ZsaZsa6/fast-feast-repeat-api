class Fast < ApplicationRecord
    has_many :comments, dependent: :destroy 
end
