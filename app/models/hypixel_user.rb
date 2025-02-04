class HypixelUser < ApplicationRecord
  belongs_to :user
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  def account_age
    return 0 unless date_created
    (Time.current - date_created.to_time).to_i
  end
end
