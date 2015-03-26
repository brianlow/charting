class Client < ActiveRecord::Base
  
  validates :first_name, presence: true
  validates :last_name, presence: true

  def age
    return nil unless date_of_birth
    (Date.current - date_of_birth).to_i / 365
  end

end