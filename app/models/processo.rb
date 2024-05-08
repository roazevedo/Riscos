class Processo < ApplicationRecord
  has_many :riscos, dependent: :destroy
  has_many :controles, dependent: :destroy
  has_many :planos, dependent: :destroy

  validates :nome, presence: true
  validates :orgao1, presence: true
end
