class CreateEvent < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :venue
      t.string :date
      t.string :description
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
