class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :email
      t.string :board
      t.string :link

      t.timestamps
    end
  end
end
