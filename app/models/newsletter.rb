# frozen_string_literal: true

class Newsletter < ApplicationRecord
  # Validations
  validates :email, presence: true, uniqueness: true
  validates :token, uniqueness: true, allow_blank: true  

  # Methods
  def signup!
    self.token = SecureRandom.hex(10)
    self.active = true
    save!
  end

  def cancel!
    self.token = nil
    self.active = false
    save!
  end
end
