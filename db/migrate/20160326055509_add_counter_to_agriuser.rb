class AddCounterToAgriuser < ActiveRecord::Migration
  def change
    add_column :agriusers, :likescounter, :integer
  end
end
