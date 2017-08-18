class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :message
      t.references :user

      t.timestamps null: false
    end
  end
end
