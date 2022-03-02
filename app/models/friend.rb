class Friend < ApplicationRecord
    # validates :name, :email, :phone , :twitter, presence: true
    # validates_uniqueness_of :email, on: [:create , :update], message: "must be unique"

    belongs_to :user
end
