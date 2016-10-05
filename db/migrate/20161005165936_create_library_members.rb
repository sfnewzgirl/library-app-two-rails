class CreateLibraryMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :library_members do |t|
      t.belongs_to :member, foreign_key: true
      t.belongs_to :library, foreign_key: true

      t.timestamps
    end
  end
end
