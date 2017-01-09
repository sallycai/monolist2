class CreateWants < ActiveRecord::Migration
  def change
    create_table :wants do |t|

      t.timestamps null: false
    end
  end
end
