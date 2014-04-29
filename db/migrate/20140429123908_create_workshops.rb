class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :desc
      t.text :goals
      t.string :duration
      t.references :curriculum, polymorphic: true, index: true

      t.timestamps
    end
  end
end
