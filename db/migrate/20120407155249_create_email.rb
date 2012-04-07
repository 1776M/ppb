class CreateEmail < ActiveRecord::Migration
  def change
    create_table :email do |t|
      t.string :email
      t.string :board
      t.string :link

      t.timestamps
    end
  end
end
