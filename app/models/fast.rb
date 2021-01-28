class Fast < ApplicationRecord
    has_many :comments, dependent: :destroy 

    # def self.fast_hours
    #     DateTime.new(fast.created_at).to_Time.now
    # end
    # def self.fast_hash
    #     fast_hash = {fast: fast, hours: fast_hours}
    # end

    
end
