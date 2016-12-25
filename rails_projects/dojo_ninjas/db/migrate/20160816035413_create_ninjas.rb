class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.references :dojo
      t.string :last_name
      t.string :first_name

      t.timestamps
    end
  end
end
