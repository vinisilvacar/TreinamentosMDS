class Restaurante < ApplicationRecord
  validates_presence_of :nome, message: "deve ser preenchido"
  validates_uniqueness_of :nome, message: "Já existe"
  has_many :qualificacoes
  has_and_belongs_to_many :pratos


end
