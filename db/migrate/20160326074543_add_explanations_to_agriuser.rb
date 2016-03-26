class AddExplanationsToAgriuser < ActiveRecord::Migration
  def change
    add_column :agriusers, :vegitable1, :string
    add_column :agriusers, :vegitable2, :string
    add_column :agriusers, :vegitable3, :string
    add_column :agriusers, :comment, :text
  end
end
