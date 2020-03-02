class Survey < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :due_date

      t.timestamps
    end
  end
end
