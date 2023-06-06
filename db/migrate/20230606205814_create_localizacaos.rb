class CreateLocalizacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :localizacaos do |t|
      t.string :local
      t.references :departamento_id

      t.timestamps
    end
  end
end
