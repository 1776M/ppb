class CreateJoiners < ActiveRecord::Migration
  def change
    create_table :joiners do |t|
      t.string :email
      t.string :board
      t.string :link

      t.timestamps
    end
  end
end
