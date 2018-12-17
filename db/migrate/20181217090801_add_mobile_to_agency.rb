class AddMobileToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :mobile, :string
    add_column :agencies, :fax, :string
    add_column :agencies, :email, :string
  end
end
