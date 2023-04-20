class Team < ApplicationRecord

  has_many :leagues, dependent: :destroy
  belongs_to :user

end
