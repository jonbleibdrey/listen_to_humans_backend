class CreateAudibles < ActiveRecord::Migration[6.0]
  def change
    create_table :audibles do |t|
      t.string :title
      t.string :by
      t.string :language
      t.string :audio
      t.belongs_to :user
      t.belongs_to :review

      t.timestamps
    end
  end
end
