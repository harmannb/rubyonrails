class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :blog, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
