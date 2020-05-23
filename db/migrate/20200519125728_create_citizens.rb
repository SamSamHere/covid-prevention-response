class CreateCitizens < ActiveRecord::Migration[6.0]
  def change
    create_table :citizens do |t|
      t.string :email
      t.string :password
      t.integer :postal_code
      t.string :nric
      t.string :role, default: 'normal'

      t.timestamps
    end
  end
end
