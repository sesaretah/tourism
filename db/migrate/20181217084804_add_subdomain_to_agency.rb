class AddSubdomainToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :subdomain, :string
  end
end
