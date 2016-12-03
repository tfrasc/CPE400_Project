class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
