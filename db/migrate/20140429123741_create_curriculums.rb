class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :title
      t.text :desc
      t.text :goals

      t.timestamps
    end
  end
end
