class Article < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :title, presence: true, length: { minimum: 5 }
  validates :desc, presence: true

   enum publish: {publish: 1, not_publish: 0}

  # validates :number, numericality: {only_integer: true}

  # with_options if: :is_admin? do |admin|
  #   admin.validates :password, length: { minimum: 10 }
  #   admin.validates :email, presence: true
  # end
  #
end
