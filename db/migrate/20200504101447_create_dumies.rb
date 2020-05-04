class CreateDumies < ActiveRecord::Migration[5.2]
  def change
    create_table :dumies do |t|

      t.timestamps
    end
  end
end
