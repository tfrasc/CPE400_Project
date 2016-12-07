class CreateIntrusions < ActiveRecord::Migration[5.0]
  def change
    create_table :intrusions do |t|

      t.timestamps
    end
  end
end
