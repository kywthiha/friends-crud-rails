class Friend < ApplicationRecord
    # validates :name, :email, :phone , :twitter, presence: true
    # validates_uniqueness_of :email, on: [:create , :update], message: "must be unique"

    belongs_to :user,optional: true

    scope :search, ->(search) {
        if search
            where("name LIKE ? OR users.email LIKE ?", "%#{search}%", "%#{search}%")
        end
    }
end
