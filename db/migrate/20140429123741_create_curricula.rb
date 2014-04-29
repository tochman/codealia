class CreateCurricula < ActiveRecord::Migration
  def change
    create_table :curricula do |t|
      t.string :title
      t.text :desc
      t.text :goals

      t.timestamps
    end
  end
end
