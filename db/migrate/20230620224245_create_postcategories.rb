class CreatePostcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :postcategories do |t|

      t.timestamps
    end
  end
end
