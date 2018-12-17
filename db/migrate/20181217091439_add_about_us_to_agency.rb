class AddAboutUsToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :about_us, :text
  end
end
