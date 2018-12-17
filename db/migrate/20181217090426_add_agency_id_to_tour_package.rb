class AddAgencyIdToTourPackage < ActiveRecord::Migration
  def change
    add_column :tour_packages, :agency_id, :integer
  end
end
