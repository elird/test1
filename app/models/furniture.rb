class Furniture < ApplicationRecord

  validates :description,
  format: {
  with: /\A[0-9ÁÉÍÓÚÑA-Z\. ]+\z/,
  message: "Solo números, letras o pasar a mayúsculas" },
  :presence => {:message => "Campo obligatorio"},
  :uniqueness => {:message => "El valor %{value} ya existe"},
  length: {
    maximum: 100, allow_blank: false,
    message: "No es una descripción mueble válida"
   }


   validates :profit,
   numericality: {
     greater_than: 99,
     less_than: 999999999,
     :message => "Ganancia no entra en el rango"
   }


end
