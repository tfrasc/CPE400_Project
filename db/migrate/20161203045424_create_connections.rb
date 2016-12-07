class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :arduinos do |t|
      t.boolean :status, default: nil
      t.timestamps
    end
  end
end
