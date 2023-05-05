class AddStatsToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :image_url, :string
    add_column :dogs, :excitement, :integer
    add_column :dogs, :energy, :integer
    add_column :dogs, :laziness, :integer
    add_column :dogs, :fun, :integer
  end
end
