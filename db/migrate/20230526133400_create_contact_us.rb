class CreateContactUs < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_us do |t|
      t.string :via
      t.string :information

      t.timestamps
    end
  end
end
