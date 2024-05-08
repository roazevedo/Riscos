class Controle < ApplicationRecord
  belongs_to :processo
  belongs_to :risco
  has_many :planos, dependent: :destroy

  validates :nome, presence: true
end
