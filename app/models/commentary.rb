class Commentary < ApplicationRecord
    validates :content , presence: :true
    belongs_to :user 
    has_many :modelplural
    user:references

end
