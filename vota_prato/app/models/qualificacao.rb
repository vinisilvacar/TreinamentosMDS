class Qualificacao < ApplicationRecord
  validates_presence_of :nota, message: " - deve ser preenchido"
  validates_presence_of :valor_gasto, message: " - deve ser preenchido"

  validates_numeracality_of :nota, greather_than_or_equal_to: 0,
                                   less_than_or_equal_to: 10,
                                   message: " - deve ser um número entre 0 e 10"
  validates_numeracality_of :valor_gasto, greather_than: 0,
                                          message: " - deve ser num número maior que 0"
  belongs_to :cliente
  belongs_to :restaurante

  validates_presence_of :cliente_id, :restaurante_id
  validates_uniqueness_of :prato

end
