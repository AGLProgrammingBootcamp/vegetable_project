class CreateAgriusers < ActiveRecord::Migration
  def change
    create_table :agriusers do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
