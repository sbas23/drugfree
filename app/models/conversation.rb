class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  
  # Validar estas lineas generan error

  #belongs_to :sender, foreign_key: :sender_id, class_name: User
  #belongs_to :recipient, foreign_key: :recipient_id, class_name: User
 
  validates :sender_id, uniqueness: { scope: :recipient_id }
 
  def opposed_user(user)
    user == recipient ? sender : recipient
  end
end
