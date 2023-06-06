class Departamento < ApplicationRecord
    has_many:localizacaos, dependent: :destroy
    validates:nome ,presence: :True
end

