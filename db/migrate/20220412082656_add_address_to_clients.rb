class AddAddressToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :street, :string
    add_column :clients, :city, :string
    add_column :clients, :state, :string
    add_column :clients, :zipcode, :string
    add_column :clients, :latitude, :float
    add_column :clients, :longitude, :float
  end
end
