class CreateTodolists < ActiveRecord::Migration[8.0]
  def change
    create_table :todolists do |t|
      t.string :name, null: false
      t.references :user
      t.timestamps
    end

    create_table :affairs do |t|
      t.string :name, null: false
      t.text :description
      t.datetime :deadline
      t.references :todolist
      t.timestamps
    end
  end
end
