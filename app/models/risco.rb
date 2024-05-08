class Risco < ApplicationRecord
  belongs_to :processo
  has_many :controles, dependent: :destroy
  has_many :planos, dependent: :destroy

  validates :nome, presence: true
end
